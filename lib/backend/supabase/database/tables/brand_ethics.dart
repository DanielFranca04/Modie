import '../database.dart';

class BrandEthicsTable extends SupabaseTable<BrandEthicsRow> {
  @override
  String get tableName => 'brand_ethics';

  @override
  BrandEthicsRow createRow(Map<String, dynamic> data) => BrandEthicsRow(data);
}

class BrandEthicsRow extends SupabaseDataRow {
  BrandEthicsRow(super.data);

  @override
  SupabaseTable get table => BrandEthicsTable();

  int get brandId => getField<int>('brand_id')!;
  set brandId(int value) => setField<int>('brand_id', value);

  int get ethicalId => getField<int>('ethical_id')!;
  set ethicalId(int value) => setField<int>('ethical_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
