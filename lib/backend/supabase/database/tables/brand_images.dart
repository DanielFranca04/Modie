import '../database.dart';

class BrandImagesTable extends SupabaseTable<BrandImagesRow> {
  @override
  String get tableName => 'brand_images';

  @override
  BrandImagesRow createRow(Map<String, dynamic> data) => BrandImagesRow(data);
}

class BrandImagesRow extends SupabaseDataRow {
  BrandImagesRow(super.data);

  @override
  SupabaseTable get table => BrandImagesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get brandId => getField<int>('brand_id');
  set brandId(int? value) => setField<int>('brand_id', value);

  String? get indexImage => getField<String>('index_image');
  set indexImage(String? value) => setField<String>('index_image', value);

  String? get brandDetails => getField<String>('brand_details');
  set brandDetails(String? value) => setField<String>('brand_details', value);

  String? get philosophy => getField<String>('philosophy');
  set philosophy(String? value) => setField<String>('philosophy', value);

  String? get story => getField<String>('story');
  set story(String? value) => setField<String>('story', value);

  String? get team => getField<String>('team');
  set team(String? value) => setField<String>('team', value);

  String? get packing => getField<String>('packing');
  set packing(String? value) => setField<String>('packing', value);
}
