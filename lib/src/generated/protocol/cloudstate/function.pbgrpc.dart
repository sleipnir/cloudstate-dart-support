///
//  Generated code. Do not modify.
//  source: protocol/cloudstate/function.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'function.pb.dart' as $4;
export 'function.pb.dart';

class StatelessFunctionClient extends $grpc.Client {
  static final _$handleUnary =
      $grpc.ClientMethod<$4.FunctionCommand, $4.FunctionReply>(
          '/cloudstate.function.StatelessFunction/handleUnary',
          ($4.FunctionCommand value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.FunctionReply.fromBuffer(value));
  static final _$handleStreamedIn =
      $grpc.ClientMethod<$4.FunctionCommand, $4.FunctionReply>(
          '/cloudstate.function.StatelessFunction/handleStreamedIn',
          ($4.FunctionCommand value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.FunctionReply.fromBuffer(value));
  static final _$handleStreamedOut =
      $grpc.ClientMethod<$4.FunctionCommand, $4.FunctionReply>(
          '/cloudstate.function.StatelessFunction/handleStreamedOut',
          ($4.FunctionCommand value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.FunctionReply.fromBuffer(value));
  static final _$handleStreamed =
      $grpc.ClientMethod<$4.FunctionCommand, $4.FunctionReply>(
          '/cloudstate.function.StatelessFunction/handleStreamed',
          ($4.FunctionCommand value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.FunctionReply.fromBuffer(value));

  StatelessFunctionClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$4.FunctionReply> handleUnary($4.FunctionCommand request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$handleUnary, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$4.FunctionReply> handleStreamedIn(
      $async.Stream<$4.FunctionCommand> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$handleStreamedIn, request, options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$4.FunctionReply> handleStreamedOut(
      $4.FunctionCommand request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$handleStreamedOut, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseStream<$4.FunctionReply> handleStreamed(
      $async.Stream<$4.FunctionCommand> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$handleStreamed, request, options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class StatelessFunctionServiceBase extends $grpc.Service {
  $core.String get $name => 'cloudstate.function.StatelessFunction';

  StatelessFunctionServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.FunctionCommand, $4.FunctionReply>(
        'handleUnary',
        handleUnary_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.FunctionCommand.fromBuffer(value),
        ($4.FunctionReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.FunctionCommand, $4.FunctionReply>(
        'handleStreamedIn',
        handleStreamedIn,
        true,
        false,
        ($core.List<$core.int> value) => $4.FunctionCommand.fromBuffer(value),
        ($4.FunctionReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.FunctionCommand, $4.FunctionReply>(
        'handleStreamedOut',
        handleStreamedOut_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $4.FunctionCommand.fromBuffer(value),
        ($4.FunctionReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.FunctionCommand, $4.FunctionReply>(
        'handleStreamed',
        handleStreamed,
        true,
        true,
        ($core.List<$core.int> value) => $4.FunctionCommand.fromBuffer(value),
        ($4.FunctionReply value) => value.writeToBuffer()));
  }

  $async.Future<$4.FunctionReply> handleUnary_Pre(
      $grpc.ServiceCall call, $async.Future<$4.FunctionCommand> request) async {
    return handleUnary(call, await request);
  }

  $async.Stream<$4.FunctionReply> handleStreamedOut_Pre($grpc.ServiceCall call,
      $async.Future<$4.FunctionCommand> request) async* {
    yield* handleStreamedOut(call, await request);
  }

  $async.Future<$4.FunctionReply> handleUnary(
      $grpc.ServiceCall call, $4.FunctionCommand request);
  $async.Future<$4.FunctionReply> handleStreamedIn(
      $grpc.ServiceCall call, $async.Stream<$4.FunctionCommand> request);
  $async.Stream<$4.FunctionReply> handleStreamedOut(
      $grpc.ServiceCall call, $4.FunctionCommand request);
  $async.Stream<$4.FunctionReply> handleStreamed(
      $grpc.ServiceCall call, $async.Stream<$4.FunctionCommand> request);
}
