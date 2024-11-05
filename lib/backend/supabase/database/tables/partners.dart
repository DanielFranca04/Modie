import '../database.dart';

class PartnersTable extends SupabaseTable<PartnersRow> {
  @override
  String get tableName => 'partners';

  @override
  PartnersRow createRow(Map<String, dynamic> data) => PartnersRow(data);
}

class PartnersRow extends SupabaseDataRow {
  PartnersRow(super.data);

  @override
  SupabaseTable get table => PartnersTable();

  int get partnerId => getField<int>('partner_id')!;
  set partnerId(int value) => setField<int>('partner_id', value);

  String? get partnerName => getField<String>('partner_name');
  set partnerName(String? value) => setField<String>('partner_name', value);
}
