import '../database.dart';

class ProductTable extends SupabaseTable<ProductRow> {
  @override
  String get tableName => 'product';

  @override
  ProductRow createRow(Map<String, dynamic> data) => ProductRow(data);
}

class ProductRow extends SupabaseDataRow {
  ProductRow(super.data);

  @override
  SupabaseTable get table => ProductTable();

  int get produtoId => getField<int>('produto_id')!;
  set produtoId(int value) => setField<int>('produto_id', value);

  String? get idShopify => getField<String>('id_shopify');
  set idShopify(String? value) => setField<String>('id_shopify', value);

  int? get idBrand => getField<int>('id_brand');
  set idBrand(int? value) => setField<int>('id_brand', value);

  double? get overallScore => getField<double>('overall_score');
  set overallScore(double? value) => setField<double>('overall_score', value);

  double? get durability => getField<double>('durability');
  set durability(double? value) => setField<double>('durability', value);

  double? get sizeFit => getField<double>('size_fit');
  set sizeFit(double? value) => setField<double>('size_fit', value);

  double? get versatility => getField<double>('versatility');
  set versatility(double? value) => setField<double>('versatility', value);

  double? get functionality => getField<double>('functionality');
  set functionality(double? value) => setField<double>('functionality', value);

  double? get valueForMoney => getField<double>('value_for_money');
  set valueForMoney(double? value) =>
      setField<double>('value_for_money', value);

  String? get specifics => getField<String>('specifics');
  set specifics(String? value) => setField<String>('specifics', value);

  String? get compositions => getField<String>('compositions');
  set compositions(String? value) => setField<String>('compositions', value);

  String? get careInstructions => getField<String>('care_instructions');
  set careInstructions(String? value) =>
      setField<String>('care_instructions', value);

  String? get sizeGuide => getField<String>('size_guide');
  set sizeGuide(String? value) => setField<String>('size_guide', value);
}
