// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsStruct extends BaseStruct {
  ReviewsStruct({
    String? productId,
    int? countimg,
    int? numb,
  })  : _productId = productId,
        _countimg = countimg,
        _numb = numb;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  set productId(String? val) => _productId = val;

  bool hasProductId() => _productId != null;

  // "countimg" field.
  int? _countimg;
  int get countimg => _countimg ?? 0;
  set countimg(int? val) => _countimg = val;

  void incrementCountimg(int amount) => countimg = countimg + amount;

  bool hasCountimg() => _countimg != null;

  // "numb" field.
  int? _numb;
  int get numb => _numb ?? 0;
  set numb(int? val) => _numb = val;

  void incrementNumb(int amount) => numb = numb + amount;

  bool hasNumb() => _numb != null;

  static ReviewsStruct fromMap(Map<String, dynamic> data) => ReviewsStruct(
        productId: data['product_id'] as String?,
        countimg: castToType<int>(data['countimg']),
        numb: castToType<int>(data['numb']),
      );

  static ReviewsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ReviewsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'product_id': _productId,
        'countimg': _countimg,
        'numb': _numb,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_id': serializeParam(
          _productId,
          ParamType.String,
        ),
        'countimg': serializeParam(
          _countimg,
          ParamType.int,
        ),
        'numb': serializeParam(
          _numb,
          ParamType.int,
        ),
      }.withoutNulls;

  static ReviewsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReviewsStruct(
        productId: deserializeParam(
          data['product_id'],
          ParamType.String,
          false,
        ),
        countimg: deserializeParam(
          data['countimg'],
          ParamType.int,
          false,
        ),
        numb: deserializeParam(
          data['numb'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ReviewsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReviewsStruct &&
        productId == other.productId &&
        countimg == other.countimg &&
        numb == other.numb;
  }

  @override
  int get hashCode => const ListEquality().hash([productId, countimg, numb]);
}

ReviewsStruct createReviewsStruct({
  String? productId,
  int? countimg,
  int? numb,
}) =>
    ReviewsStruct(
      productId: productId,
      countimg: countimg,
      numb: numb,
    );
