// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends BaseStruct {
  ProductStruct({
    int? shopifyId,
    List<String>? colors,
    List<String>? size,
    bool? specifics,
    bool? composition,
    bool? careInst,
    bool? delivRetExch,
    bool? environmental,
    bool? returnprd,
  })  : _shopifyId = shopifyId,
        _colors = colors,
        _size = size,
        _specifics = specifics,
        _composition = composition,
        _careInst = careInst,
        _delivRetExch = delivRetExch,
        _environmental = environmental,
        _returnprd = returnprd;

  // "shopify_id" field.
  int? _shopifyId;
  int get shopifyId => _shopifyId ?? 0;
  set shopifyId(int? val) => _shopifyId = val;

  void incrementShopifyId(int amount) => shopifyId = shopifyId + amount;

  bool hasShopifyId() => _shopifyId != null;

  // "Colors" field.
  List<String>? _colors;
  List<String> get colors => _colors ?? const [];
  set colors(List<String>? val) => _colors = val;

  void updateColors(Function(List<String>) updateFn) {
    updateFn(_colors ??= []);
  }

  bool hasColors() => _colors != null;

  // "size" field.
  List<String>? _size;
  List<String> get size => _size ?? const [];
  set size(List<String>? val) => _size = val;

  void updateSize(Function(List<String>) updateFn) {
    updateFn(_size ??= []);
  }

  bool hasSize() => _size != null;

  // "Specifics" field.
  bool? _specifics;
  bool get specifics => _specifics ?? false;
  set specifics(bool? val) => _specifics = val;

  bool hasSpecifics() => _specifics != null;

  // "Composition" field.
  bool? _composition;
  bool get composition => _composition ?? false;
  set composition(bool? val) => _composition = val;

  bool hasComposition() => _composition != null;

  // "CareInst" field.
  bool? _careInst;
  bool get careInst => _careInst ?? false;
  set careInst(bool? val) => _careInst = val;

  bool hasCareInst() => _careInst != null;

  // "DelivRetExch" field.
  bool? _delivRetExch;
  bool get delivRetExch => _delivRetExch ?? false;
  set delivRetExch(bool? val) => _delivRetExch = val;

  bool hasDelivRetExch() => _delivRetExch != null;

  // "Environmental" field.
  bool? _environmental;
  bool get environmental => _environmental ?? false;
  set environmental(bool? val) => _environmental = val;

  bool hasEnvironmental() => _environmental != null;

  // "returnprd" field.
  bool? _returnprd;
  bool get returnprd => _returnprd ?? false;
  set returnprd(bool? val) => _returnprd = val;

  bool hasReturnprd() => _returnprd != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        shopifyId: castToType<int>(data['shopify_id']),
        colors: getDataList(data['Colors']),
        size: getDataList(data['size']),
        specifics: data['Specifics'] as bool?,
        composition: data['Composition'] as bool?,
        careInst: data['CareInst'] as bool?,
        delivRetExch: data['DelivRetExch'] as bool?,
        environmental: data['Environmental'] as bool?,
        returnprd: data['returnprd'] as bool?,
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'shopify_id': _shopifyId,
        'Colors': _colors,
        'size': _size,
        'Specifics': _specifics,
        'Composition': _composition,
        'CareInst': _careInst,
        'DelivRetExch': _delivRetExch,
        'Environmental': _environmental,
        'returnprd': _returnprd,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'shopify_id': serializeParam(
          _shopifyId,
          ParamType.int,
        ),
        'Colors': serializeParam(
          _colors,
          ParamType.String,
          isList: true,
        ),
        'size': serializeParam(
          _size,
          ParamType.String,
          isList: true,
        ),
        'Specifics': serializeParam(
          _specifics,
          ParamType.bool,
        ),
        'Composition': serializeParam(
          _composition,
          ParamType.bool,
        ),
        'CareInst': serializeParam(
          _careInst,
          ParamType.bool,
        ),
        'DelivRetExch': serializeParam(
          _delivRetExch,
          ParamType.bool,
        ),
        'Environmental': serializeParam(
          _environmental,
          ParamType.bool,
        ),
        'returnprd': serializeParam(
          _returnprd,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
        shopifyId: deserializeParam(
          data['shopify_id'],
          ParamType.int,
          false,
        ),
        colors: deserializeParam<String>(
          data['Colors'],
          ParamType.String,
          true,
        ),
        size: deserializeParam<String>(
          data['size'],
          ParamType.String,
          true,
        ),
        specifics: deserializeParam(
          data['Specifics'],
          ParamType.bool,
          false,
        ),
        composition: deserializeParam(
          data['Composition'],
          ParamType.bool,
          false,
        ),
        careInst: deserializeParam(
          data['CareInst'],
          ParamType.bool,
          false,
        ),
        delivRetExch: deserializeParam(
          data['DelivRetExch'],
          ParamType.bool,
          false,
        ),
        environmental: deserializeParam(
          data['Environmental'],
          ParamType.bool,
          false,
        ),
        returnprd: deserializeParam(
          data['returnprd'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductStruct &&
        shopifyId == other.shopifyId &&
        listEquality.equals(colors, other.colors) &&
        listEquality.equals(size, other.size) &&
        specifics == other.specifics &&
        composition == other.composition &&
        careInst == other.careInst &&
        delivRetExch == other.delivRetExch &&
        environmental == other.environmental &&
        returnprd == other.returnprd;
  }

  @override
  int get hashCode => const ListEquality().hash([
        shopifyId,
        colors,
        size,
        specifics,
        composition,
        careInst,
        delivRetExch,
        environmental,
        returnprd
      ]);
}

ProductStruct createProductStruct({
  int? shopifyId,
  bool? specifics,
  bool? composition,
  bool? careInst,
  bool? delivRetExch,
  bool? environmental,
  bool? returnprd,
}) =>
    ProductStruct(
      shopifyId: shopifyId,
      specifics: specifics,
      composition: composition,
      careInst: careInst,
      delivRetExch: delivRetExch,
      environmental: environmental,
      returnprd: returnprd,
    );
