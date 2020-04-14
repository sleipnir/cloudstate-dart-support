import 'dart:mirrors';

import 'package:logger/logger.dart';
import 'package:optional/optional_internal.dart';
import 'package:protobuf/protobuf.dart';

import '../cloudstate.dart';
import 'generated/protocol/google/protobuf/any.pb.dart';

class ReflectHelper {
  static final _logger = Logger(
    filter: null,
    printer: LogfmtPrinter(),
    output: ConsoleOutput(),
  );

  static Object createInstance(Type type,
      [String persistenceId,
      Context context,
      Symbol constructor,
      List arguments,
      Map<Symbol, dynamic> namedArguments]) {
    if (type == null) {
      throw ArgumentError('Type: $type');
    }

    constructor ??= const Symbol('');
    arguments ??= const [];

    var typeMirror = reflectType(type);
    if (typeMirror is ClassMirror) {
      return typeMirror
          .newInstance(constructor, arguments, namedArguments)
          .reflectee;
    } else {
      throw ArgumentError("Cannot create the instance of the type '$type'.");
    }
  }

  static Optional<Any> invoke(
      Object instance, MethodMirror method, Any payload, Context context) {
    if (method.parameters.isEmpty) {
      _logger.v('Using $method!');

      var instanceMirrorResult =
          reflect(instance).invoke(method.simpleName, []);
      var result = Any.pack(instanceMirrorResult.reflectee);
      _logger.d('\nResult: $instanceMirrorResult.\nType result:\n${result}');

      return Optional.of(result);
    } else {
      _logger.d('Found Parameters on request method: ${method}');

      var arguments = [];
      method.parameters.forEach((e) {
        _logger.d('Parameter Type is: ${e.type}');
        if (e.type.isAssignableTo(reflectType(GeneratedMessage))) {
          _logger.d('Set parameter ${MirrorSystem.getName(e.simpleName)}');
          var msg = ReflectHelper.createInstance(e.type.reflectedType);
          arguments.add(payload.unpackInto(msg as GeneratedMessage));
          _logger.v('Argument added!');
        } else if (e.type.isAssignableTo(reflectType(Context))) {
          _logger.d('Set parameter ${MirrorSystem.getName(e.simpleName)}');
          arguments.add(context);
        }
      });

      var instanceMirrorResult =
          reflect(instance).invoke(method.simpleName, arguments);
      _logger.v('Invoke response $instanceMirrorResult');
      if (instanceMirrorResult != null &&
          MirrorSystem.getName(instanceMirrorResult.type.simpleName) !=
              'Null') {
        _logger.v(
            'InstanceMirrorResult not null. ${MirrorSystem.getName(instanceMirrorResult.type.simpleName)}');
        var result = Any.pack(instanceMirrorResult.reflectee);
        _logger.d('\nResult: $instanceMirrorResult.\nType result:\n${result}');
        return Optional.ofNullable(result);
      } else {
        //handle void or null responses
        _logger.d('Handle void or null responses');
        return Optional.empty();
      }
    }
  }

  static List<MethodMirror> getAllMethods(ClassMirror entityClassMirror) {
    return entityClassMirror.declarations.values
        .where((d) => d is MethodMirror && !d.isConstructor)
        .map((f) => f as MethodMirror)
        .toList();
  }

  static Map<String, MethodMirror> getMethodsByAnnotation(
      List<MethodMirror> allDeclaredMethods, Type annotation) {
    // ignore: omit_local_variable_types
    final Map<String, MethodMirror> methods = {};
    var annotationMirror = reflectClass(annotation);
    allDeclaredMethods
        .where((elem) =>
            elem.metadata.where((test) => test.type == annotationMirror) !=
            null)
        .forEach(
            (e) => methods[capitalize(MirrorSystem.getName(e.simpleName))] = e);
    return methods;
  }
}
