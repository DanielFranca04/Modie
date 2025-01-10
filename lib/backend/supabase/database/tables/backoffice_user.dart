import '../database.dart';

class BackofficeUserTable extends SupabaseTable<BackofficeUserRow> {
  @override
  String get tableName => 'backoffice_user';

  @override
  BackofficeUserRow createRow(Map<String, dynamic> data) =>
      BackofficeUserRow(data);
}

class BackofficeUserRow extends SupabaseDataRow {
  BackofficeUserRow(super.data);

  @override
  SupabaseTable get table => BackofficeUserTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String get role => getField<String>('role')!;
  set role(String value) => setField<String>('role', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get authId => getField<String>('auth_id');
  set authId(String? value) => setField<String>('auth_id', value);

  int? get brandId => getField<int>('brand_id');
  set brandId(int? value) => setField<int>('brand_id', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);
}
