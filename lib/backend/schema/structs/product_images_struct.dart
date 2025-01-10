// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductImagesStruct extends BaseStruct {
  ProductImagesStruct({
    String? color,
    int? index,
  })  : _color = color,
        _index = index;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  set color(String? val) => _color = val;

  bool hasColor() => _color != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  static ProductImagesStruct fromMap(Map<String, dynamic> data) =>
      ProductImagesStruct(
        color: data['color'] as String?,
        index: castToType<int>(data['index']),
      );

  static ProductImagesStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductImagesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'color': _color,
        'index': _index,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'color': serializeParam(
          _color,
          ParamType.String,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProductImagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductImagesStruct(
        color: deserializeParam(
          data['color'],
          ParamType.String,
          false,
        ),
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProductImagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductImagesStruct &&
        color == other.color &&
        index == other.index;
  }

  @override
  int get hashCode => const ListEquality().hash([color, index]);
}

ProductImagesStruct createProductImagesStruct({
  String? color,
  int? index,
}) =>
    ProductImagesStruct(
      color: color,
      index: index,
    );
