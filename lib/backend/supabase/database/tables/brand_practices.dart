import '../database.dart';

class BrandPracticesTable extends SupabaseTable<BrandPracticesRow> {
  @override
  String get tableName => 'brand_practices';

  @override
  BrandPracticesRow createRow(Map<String, dynamic> data) =>
      BrandPracticesRow(data);
}

class BrandPracticesRow extends SupabaseDataRow {
  BrandPracticesRow(super.data);

  @override
  SupabaseTable get table => BrandPracticesTable();

  int get brandId => getField<int>('brand_id')!;
  set brandId(int value) => setField<int>('brand_id', value);

  int get practiceId => getField<int>('practice_id')!;
  set practiceId(int value) => setField<int>('practice_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
