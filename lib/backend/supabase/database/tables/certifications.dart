import '../database.dart';

class CertificationsTable extends SupabaseTable<CertificationsRow> {
  @override
  String get tableName => 'certifications';

  @override
  CertificationsRow createRow(Map<String, dynamic> data) =>
      CertificationsRow(data);
}

class CertificationsRow extends SupabaseDataRow {
  CertificationsRow(super.data);

  @override
  SupabaseTable get table => CertificationsTable();

  int get certificationId => getField<int>('certification_id')!;
  set certificationId(int value) => setField<int>('certification_id', value);

  String? get certification => getField<String>('certification');
  set certification(String? value) => setField<String>('certification', value);
}
