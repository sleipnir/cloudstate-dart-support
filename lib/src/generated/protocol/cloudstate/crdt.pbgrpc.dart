///
//  Generated code. Do not modify.
//  source: protocol/cloudstate/crdt.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'crdt.pb.dart' as $2;
export 'crdt.pb.dart';

class CrdtClient extends $grpc.Client {
  static final _$handle = $grpc.ClientMethod<$2.CrdtStreamIn, $2.CrdtStreamOut>(
      '/cloudstate.crdt.Crdt/handle',
      ($2.CrdtStreamIn value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CrdtStreamOut.fromBuffer(value));

  CrdtClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$2.CrdtStreamOut> handle(
      $async.Stream<$2.CrdtStreamIn> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$handle, request, options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class CrdtServiceBase extends $grpc.Service {
  $core.String get $name => 'cloudstate.crdt.Crdt';

  CrdtServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CrdtStreamIn, $2.CrdtStreamOut>(
        'handle',
        handle,
        true,
        true,
        ($core.List<$core.int> value) => $2.CrdtStreamIn.fromBuffer(value),
        ($2.CrdtStreamOut value) => value.writeToBuffer()));
  }

  $async.Stream<$2.CrdtStreamOut> handle(
      $grpc.ServiceCall call, $async.Stream<$2.CrdtStreamIn> request);
}
