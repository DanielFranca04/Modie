import '../database.dart';

class BrandPartnersTable extends SupabaseTable<BrandPartnersRow> {
  @override
  String get tableName => 'brand_partners';

  @override
  BrandPartnersRow createRow(Map<String, dynamic> data) =>
      BrandPartnersRow(data);
}

class BrandPartnersRow extends SupabaseDataRow {
  BrandPartnersRow(super.data);

  @override
  SupabaseTable get table => BrandPartnersTable();

  int get brandId => getField<int>('brand_id')!;
  set brandId(int value) => setField<int>('brand_id', value);

  int get partnerId => getField<int>('partner_id')!;
  set partnerId(int value) => setField<int>('partner_id', value);
}
