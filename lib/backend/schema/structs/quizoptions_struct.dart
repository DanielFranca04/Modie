// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizoptionsStruct extends BaseStruct {
  QuizoptionsStruct({
    List<String>? options,
  }) : _options = options;

  // "options" field.
  List<String>? _options;
  List<String> get options => _options ?? const [];
  set options(List<String>? val) => _options = val;

  void updateOptions(Function(List<String>) updateFn) {
    updateFn(_options ??= []);
  }

  bool hasOptions() => _options != null;

  static QuizoptionsStruct fromMap(Map<String, dynamic> data) =>
      QuizoptionsStruct(
        options: getDataList(data['options']),
      );

  static QuizoptionsStruct? maybeFromMap(dynamic data) => data is Map
      ? QuizoptionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'options': _options,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'options': serializeParam(
          _options,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static QuizoptionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuizoptionsStruct(
        options: deserializeParam<String>(
          data['options'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'QuizoptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QuizoptionsStruct &&
        listEquality.equals(options, other.options);
  }

  @override
  int get hashCode => const ListEquality().hash([options]);
}

QuizoptionsStruct createQuizoptionsStruct() => QuizoptionsStruct();
