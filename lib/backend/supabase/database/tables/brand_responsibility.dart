import '../database.dart';

class BrandResponsibilityTable extends SupabaseTable<BrandResponsibilityRow> {
  @override
  String get tableName => 'brand_responsibility';

  @override
  BrandResponsibilityRow createRow(Map<String, dynamic> data) =>
      BrandResponsibilityRow(data);
}

class BrandResponsibilityRow extends SupabaseDataRow {
  BrandResponsibilityRow(super.data);

  @override
  SupabaseTable get table => BrandResponsibilityTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get brandId => getField<int>('brand_id')!;
  set brandId(int value) => setField<int>('brand_id', value);

  int? get resp => getField<int>('resp');
  set resp(int? value) => setField<int>('resp', value);

  String? get value => getField<String>('value');
  set value(String? value) => setField<String>('value', value);
}
