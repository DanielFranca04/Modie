import '../database.dart';

class BrandTable extends SupabaseTable<BrandRow> {
  @override
  String get tableName => 'brand';

  @override
  BrandRow createRow(Map<String, dynamic> data) => BrandRow(data);
}

class BrandRow extends SupabaseDataRow {
  BrandRow(super.data);

  @override
  SupabaseTable get table => BrandTable();

  int get brandId => getField<int>('brand_id')!;
  set brandId(int value) => setField<int>('brand_id', value);

  String? get offering => getField<String>('offering');
  set offering(String? value) => setField<String>('offering', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get mission => getField<String>('mission');
  set mission(String? value) => setField<String>('mission', value);

  String? get vision => getField<String>('vision');
  set vision(String? value) => setField<String>('vision', value);

  String? get story => getField<String>('story');
  set story(String? value) => setField<String>('story', value);

  String? get team => getField<String>('team');
  set team(String? value) => setField<String>('team', value);

  String? get economy => getField<String>('economy');
  set economy(String? value) => setField<String>('economy', value);

  String? get socialImpact => getField<String>('social_impact');
  set socialImpact(String? value) => setField<String>('social_impact', value);
}
