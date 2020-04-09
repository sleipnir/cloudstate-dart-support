///
//  Generated code. Do not modify.
//  source: protocol/cloudstate/event_sourced.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'event_sourced.pb.dart' as $3;
export 'event_sourced.pb.dart';

class EventSourcedClient extends $grpc.Client {
  static final _$handle =
      $grpc.ClientMethod<$3.EventSourcedStreamIn, $3.EventSourcedStreamOut>(
          '/cloudstate.eventsourced.EventSourced/handle',
          ($3.EventSourcedStreamIn value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.EventSourcedStreamOut.fromBuffer(value));

  EventSourcedClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$3.EventSourcedStreamOut> handle(
      $async.Stream<$3.EventSourcedStreamIn> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$handle, request, options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class EventSourcedServiceBase extends $grpc.Service {
  $core.String get $name => 'cloudstate.eventsourced.EventSourced';

  EventSourcedServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$3.EventSourcedStreamIn, $3.EventSourcedStreamOut>(
            'handle',
            handle,
            true,
            true,
            ($core.List<$core.int> value) =>
                $3.EventSourcedStreamIn.fromBuffer(value),
            ($3.EventSourcedStreamOut value) => value.writeToBuffer()));
  }

  $async.Stream<$3.EventSourcedStreamOut> handle(
      $grpc.ServiceCall call, $async.Stream<$3.EventSourcedStreamIn> request);
}
