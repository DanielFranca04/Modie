import '../database.dart';

class ProductMaterialTable extends SupabaseTable<ProductMaterialRow> {
  @override
  String get tableName => 'product_material';

  @override
  ProductMaterialRow createRow(Map<String, dynamic> data) =>
      ProductMaterialRow(data);
}

class ProductMaterialRow extends SupabaseDataRow {
  ProductMaterialRow(super.data);

  @override
  SupabaseTable get table => ProductMaterialTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get material => getField<String>('material')!;
  set material(String value) => setField<String>('material', value);
}
