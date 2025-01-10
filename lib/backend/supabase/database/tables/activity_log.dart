import '../database.dart';

class ActivityLogTable extends SupabaseTable<ActivityLogRow> {
  @override
  String get tableName => 'activity_log';

  @override
  ActivityLogRow createRow(Map<String, dynamic> data) => ActivityLogRow(data);
}

class ActivityLogRow extends SupabaseDataRow {
  ActivityLogRow(super.data);

  @override
  SupabaseTable get table => ActivityLogTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get resource => getField<String>('resource')!;
  set resource(String value) => setField<String>('resource', value);

  String get action => getField<String>('action')!;
  set action(String value) => setField<String>('action', value);

  dynamic get details => getField<dynamic>('details');
  set details(dynamic value) => setField<dynamic>('details', value);

  DateTime? get timestamp => getField<DateTime>('timestamp');
  set timestamp(DateTime? value) => setField<DateTime>('timestamp', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);
}
