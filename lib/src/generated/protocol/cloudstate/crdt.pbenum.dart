///
//  Generated code. Do not modify.
//  source: protocol/cloudstate/crdt.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CrdtWriteConsistency extends $pb.ProtobufEnum {
  static const CrdtWriteConsistency LOCAL = CrdtWriteConsistency._(0, 'LOCAL');
  static const CrdtWriteConsistency MAJORITY = CrdtWriteConsistency._(1, 'MAJORITY');
  static const CrdtWriteConsistency ALL = CrdtWriteConsistency._(2, 'ALL');

  static const $core.List<CrdtWriteConsistency> values = <CrdtWriteConsistency> [
    LOCAL,
    MAJORITY,
    ALL,
  ];

  static final $core.Map<$core.int, CrdtWriteConsistency> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CrdtWriteConsistency valueOf($core.int value) => _byValue[value];

  const CrdtWriteConsistency._($core.int v, $core.String n) : super(v, n);
}

class CrdtClock extends $pb.ProtobufEnum {
  static const CrdtClock DEFAULT = CrdtClock._(0, 'DEFAULT');
  static const CrdtClock REVERSE = CrdtClock._(1, 'REVERSE');
  static const CrdtClock CUSTOM = CrdtClock._(2, 'CUSTOM');
  static const CrdtClock CUSTOM_AUTO_INCREMENT = CrdtClock._(3, 'CUSTOM_AUTO_INCREMENT');

  static const $core.List<CrdtClock> values = <CrdtClock> [
    DEFAULT,
    REVERSE,
    CUSTOM,
    CUSTOM_AUTO_INCREMENT,
  ];

  static final $core.Map<$core.int, CrdtClock> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CrdtClock valueOf($core.int value) => _byValue[value];

  const CrdtClock._($core.int v, $core.String n) : super(v, n);
}

