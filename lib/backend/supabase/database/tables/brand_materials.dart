import '../database.dart';

class BrandMaterialsTable extends SupabaseTable<BrandMaterialsRow> {
  @override
  String get tableName => 'brand_materials';

  @override
  BrandMaterialsRow createRow(Map<String, dynamic> data) =>
      BrandMaterialsRow(data);
}

class BrandMaterialsRow extends SupabaseDataRow {
  BrandMaterialsRow(super.data);

  @override
  SupabaseTable get table => BrandMaterialsTable();

  int get brandId => getField<int>('brand_id')!;
  set brandId(int value) => setField<int>('brand_id', value);

  int get materialId => getField<int>('material_id')!;
  set materialId(int value) => setField<int>('material_id', value);
}
