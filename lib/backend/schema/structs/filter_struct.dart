// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilterStruct extends BaseStruct {
  FilterStruct({
    double? minPrice,
    double? maxPrice,
    List<String>? gemStone,
    List<String>? color,
    List<String>? material,
    List<String>? materialJW,
    List<String>? size,
    List<int>? sizeJW,
    List<String>? brand,
  })  : _minPrice = minPrice,
        _maxPrice = maxPrice,
        _gemStone = gemStone,
        _color = color,
        _material = material,
        _materialJW = materialJW,
        _size = size,
        _sizeJW = sizeJW,
        _brand = brand;

  // "MinPrice" field.
  double? _minPrice;
  double get minPrice => _minPrice ?? 0.0;
  set minPrice(double? val) => _minPrice = val;

  void incrementMinPrice(double amount) => minPrice = minPrice + amount;

  bool hasMinPrice() => _minPrice != null;

  // "MaxPrice" field.
  double? _maxPrice;
  double get maxPrice => _maxPrice ?? 0.0;
  set maxPrice(double? val) => _maxPrice = val;

  void incrementMaxPrice(double amount) => maxPrice = maxPrice + amount;

  bool hasMaxPrice() => _maxPrice != null;

  // "GemStone" field.
  List<String>? _gemStone;
  List<String> get gemStone => _gemStone ?? const [];
  set gemStone(List<String>? val) => _gemStone = val;

  void updateGemStone(Function(List<String>) updateFn) {
    updateFn(_gemStone ??= []);
  }

  bool hasGemStone() => _gemStone != null;

  // "Color" field.
  List<String>? _color;
  List<String> get color => _color ?? const [];
  set color(List<String>? val) => _color = val;

  void updateColor(Function(List<String>) updateFn) {
    updateFn(_color ??= []);
  }

  bool hasColor() => _color != null;

  // "Material" field.
  List<String>? _material;
  List<String> get material => _material ?? const [];
  set material(List<String>? val) => _material = val;

  void updateMaterial(Function(List<String>) updateFn) {
    updateFn(_material ??= []);
  }

  bool hasMaterial() => _material != null;

  // "MaterialJW" field.
  List<String>? _materialJW;
  List<String> get materialJW => _materialJW ?? const [];
  set materialJW(List<String>? val) => _materialJW = val;

  void updateMaterialJW(Function(List<String>) updateFn) {
    updateFn(_materialJW ??= []);
  }

  bool hasMaterialJW() => _materialJW != null;

  // "Size" field.
  List<String>? _size;
  List<String> get size => _size ?? const [];
  set size(List<String>? val) => _size = val;

  void updateSize(Function(List<String>) updateFn) {
    updateFn(_size ??= []);
  }

  bool hasSize() => _size != null;

  // "SizeJW" field.
  List<int>? _sizeJW;
  List<int> get sizeJW => _sizeJW ?? const [];
  set sizeJW(List<int>? val) => _sizeJW = val;

  void updateSizeJW(Function(List<int>) updateFn) {
    updateFn(_sizeJW ??= []);
  }

  bool hasSizeJW() => _sizeJW != null;

  // "Brand" field.
  List<String>? _brand;
  List<String> get brand => _brand ?? const [];
  set brand(List<String>? val) => _brand = val;

  void updateBrand(Function(List<String>) updateFn) {
    updateFn(_brand ??= []);
  }

  bool hasBrand() => _brand != null;

  static FilterStruct fromMap(Map<String, dynamic> data) => FilterStruct(
        minPrice: castToType<double>(data['MinPrice']),
        maxPrice: castToType<double>(data['MaxPrice']),
        gemStone: getDataList(data['GemStone']),
        color: getDataList(data['Color']),
        material: getDataList(data['Material']),
        materialJW: getDataList(data['MaterialJW']),
        size: getDataList(data['Size']),
        sizeJW: getDataList(data['SizeJW']),
        brand: getDataList(data['Brand']),
      );

  static FilterStruct? maybeFromMap(dynamic data) =>
      data is Map ? FilterStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'MinPrice': _minPrice,
        'MaxPrice': _maxPrice,
        'GemStone': _gemStone,
        'Color': _color,
        'Material': _material,
        'MaterialJW': _materialJW,
        'Size': _size,
        'SizeJW': _sizeJW,
        'Brand': _brand,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'MinPrice': serializeParam(
          _minPrice,
          ParamType.double,
        ),
        'MaxPrice': serializeParam(
          _maxPrice,
          ParamType.double,
        ),
        'GemStone': serializeParam(
          _gemStone,
          ParamType.String,
          isList: true,
        ),
        'Color': serializeParam(
          _color,
          ParamType.String,
          isList: true,
        ),
        'Material': serializeParam(
          _material,
          ParamType.String,
          isList: true,
        ),
        'MaterialJW': serializeParam(
          _materialJW,
          ParamType.String,
          isList: true,
        ),
        'Size': serializeParam(
          _size,
          ParamType.String,
          isList: true,
        ),
        'SizeJW': serializeParam(
          _sizeJW,
          ParamType.int,
          isList: true,
        ),
        'Brand': serializeParam(
          _brand,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static FilterStruct fromSerializableMap(Map<String, dynamic> data) =>
      FilterStruct(
        minPrice: deserializeParam(
          data['MinPrice'],
          ParamType.double,
          false,
        ),
        maxPrice: deserializeParam(
          data['MaxPrice'],
          ParamType.double,
          false,
        ),
        gemStone: deserializeParam<String>(
          data['GemStone'],
          ParamType.String,
          true,
        ),
        color: deserializeParam<String>(
          data['Color'],
          ParamType.String,
          true,
        ),
        material: deserializeParam<String>(
          data['Material'],
          ParamType.String,
          true,
        ),
        materialJW: deserializeParam<String>(
          data['MaterialJW'],
          ParamType.String,
          true,
        ),
        size: deserializeParam<String>(
          data['Size'],
          ParamType.String,
          true,
        ),
        sizeJW: deserializeParam<int>(
          data['SizeJW'],
          ParamType.int,
          true,
        ),
        brand: deserializeParam<String>(
          data['Brand'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'FilterStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FilterStruct &&
        minPrice == other.minPrice &&
        maxPrice == other.maxPrice &&
        listEquality.equals(gemStone, other.gemStone) &&
        listEquality.equals(color, other.color) &&
        listEquality.equals(material, other.material) &&
        listEquality.equals(materialJW, other.materialJW) &&
        listEquality.equals(size, other.size) &&
        listEquality.equals(sizeJW, other.sizeJW) &&
        listEquality.equals(brand, other.brand);
  }

  @override
  int get hashCode => const ListEquality().hash([
        minPrice,
        maxPrice,
        gemStone,
        color,
        material,
        materialJW,
        size,
        sizeJW,
        brand
      ]);
}

FilterStruct createFilterStruct({
  double? minPrice,
  double? maxPrice,
}) =>
    FilterStruct(
      minPrice: minPrice,
      maxPrice: maxPrice,
    );
