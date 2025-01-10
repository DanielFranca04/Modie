import '../database.dart';

class BrandProductmaterialTable extends SupabaseTable<BrandProductmaterialRow> {
  @override
  String get tableName => 'brand_productmaterial';

  @override
  BrandProductmaterialRow createRow(Map<String, dynamic> data) =>
      BrandProductmaterialRow(data);
}

class BrandProductmaterialRow extends SupabaseDataRow {
  BrandProductmaterialRow(super.data);

  @override
  SupabaseTable get table => BrandProductmaterialTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get brandId => getField<int>('brand_id')!;
  set brandId(int value) => setField<int>('brand_id', value);

  int? get prodmaterialId => getField<int>('prodmaterial_id');
  set prodmaterialId(int? value) => setField<int>('prodmaterial_id', value);
}
