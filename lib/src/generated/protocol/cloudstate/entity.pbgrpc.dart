///
//  Generated code. Do not modify.
//  source: protocol/cloudstate/entity.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'entity.pb.dart' as $0;
import '../google/protobuf/empty.pb.dart' as $1;
export 'entity.pb.dart';

class EntityDiscoveryClient extends $grpc.Client {
  static final _$discover = $grpc.ClientMethod<$0.ProxyInfo, $0.EntitySpec>(
      '/cloudstate.EntityDiscovery/discover',
      ($0.ProxyInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EntitySpec.fromBuffer(value));
  static final _$reportError =
      $grpc.ClientMethod<$0.UserFunctionError, $1.Empty>(
          '/cloudstate.EntityDiscovery/reportError',
          ($0.UserFunctionError value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  EntityDiscoveryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.EntitySpec> discover($0.ProxyInfo request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$discover, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.Empty> reportError($0.UserFunctionError request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$reportError, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class EntityDiscoveryServiceBase extends $grpc.Service {
  $core.String get $name => 'cloudstate.EntityDiscovery';

  EntityDiscoveryServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ProxyInfo, $0.EntitySpec>(
        'discover',
        discover_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProxyInfo.fromBuffer(value),
        ($0.EntitySpec value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserFunctionError, $1.Empty>(
        'reportError',
        reportError_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserFunctionError.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.EntitySpec> discover_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ProxyInfo> request) async {
    return discover(call, await request);
  }

  $async.Future<$1.Empty> reportError_Pre($grpc.ServiceCall call,
      $async.Future<$0.UserFunctionError> request) async {
    return reportError(call, await request);
  }

  $async.Future<$0.EntitySpec> discover(
      $grpc.ServiceCall call, $0.ProxyInfo request);
  $async.Future<$1.Empty> reportError(
      $grpc.ServiceCall call, $0.UserFunctionError request);
}
