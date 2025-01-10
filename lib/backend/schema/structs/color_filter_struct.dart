// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ColorFilterStruct extends BaseStruct {
  ColorFilterStruct({
    String? codeColor,
    String? colorName,
  })  : _codeColor = codeColor,
        _colorName = colorName;

  // "CodeColor" field.
  String? _codeColor;
  String get codeColor => _codeColor ?? '';
  set codeColor(String? val) => _codeColor = val;

  bool hasCodeColor() => _codeColor != null;

  // "ColorName" field.
  String? _colorName;
  String get colorName => _colorName ?? '';
  set colorName(String? val) => _colorName = val;

  bool hasColorName() => _colorName != null;

  static ColorFilterStruct fromMap(Map<String, dynamic> data) =>
      ColorFilterStruct(
        codeColor: data['CodeColor'] as String?,
        colorName: data['ColorName'] as String?,
      );

  static ColorFilterStruct? maybeFromMap(dynamic data) => data is Map
      ? ColorFilterStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodeColor': _codeColor,
        'ColorName': _colorName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodeColor': serializeParam(
          _codeColor,
          ParamType.String,
        ),
        'ColorName': serializeParam(
          _colorName,
          ParamType.String,
        ),
      }.withoutNulls;

  static ColorFilterStruct fromSerializableMap(Map<String, dynamic> data) =>
      ColorFilterStruct(
        codeColor: deserializeParam(
          data['CodeColor'],
          ParamType.String,
          false,
        ),
        colorName: deserializeParam(
          data['ColorName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ColorFilterStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ColorFilterStruct &&
        codeColor == other.codeColor &&
        colorName == other.colorName;
  }

  @override
  int get hashCode => const ListEquality().hash([codeColor, colorName]);
}

ColorFilterStruct createColorFilterStruct({
  String? codeColor,
  String? colorName,
}) =>
    ColorFilterStruct(
      codeColor: codeColor,
      colorName: colorName,
    );
