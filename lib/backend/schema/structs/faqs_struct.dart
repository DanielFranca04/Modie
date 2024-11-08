// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FaqsStruct extends BaseStruct {
  FaqsStruct({
    bool? state,
  }) : _state = state;

  // "state" field.
  bool? _state;
  bool get state => _state ?? false;
  set state(bool? val) => _state = val;

  bool hasState() => _state != null;

  static FaqsStruct fromMap(Map<String, dynamic> data) => FaqsStruct(
        state: data['state'] as bool?,
      );

  static FaqsStruct? maybeFromMap(dynamic data) =>
      data is Map ? FaqsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'state': _state,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'state': serializeParam(
          _state,
          ParamType.bool,
        ),
      }.withoutNulls;

  static FaqsStruct fromSerializableMap(Map<String, dynamic> data) =>
      FaqsStruct(
        state: deserializeParam(
          data['state'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'FaqsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FaqsStruct && state == other.state;
  }

  @override
  int get hashCode => const ListEquality().hash([state]);
}

FaqsStruct createFaqsStruct({
  bool? state,
}) =>
    FaqsStruct(
      state: state,
    );
