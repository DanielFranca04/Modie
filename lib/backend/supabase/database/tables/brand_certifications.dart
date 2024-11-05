import '../database.dart';

class BrandCertificationsTable extends SupabaseTable<BrandCertificationsRow> {
  @override
  String get tableName => 'brand_certifications';

  @override
  BrandCertificationsRow createRow(Map<String, dynamic> data) =>
      BrandCertificationsRow(data);
}

class BrandCertificationsRow extends SupabaseDataRow {
  BrandCertificationsRow(super.data);

  @override
  SupabaseTable get table => BrandCertificationsTable();

  int get brandId => getField<int>('brand_id')!;
  set brandId(int value) => setField<int>('brand_id', value);

  int get certificationId => getField<int>('certification_id')!;
  set certificationId(int value) => setField<int>('certification_id', value);
}
