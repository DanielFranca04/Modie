import '../database.dart';

class UserPreferencesTable extends SupabaseTable<UserPreferencesRow> {
  @override
  String get tableName => 'user_preferences';

  @override
  UserPreferencesRow createRow(Map<String, dynamic> data) =>
      UserPreferencesRow(data);
}

class UserPreferencesRow extends SupabaseDataRow {
  UserPreferencesRow(super.data);

  @override
  SupabaseTable get table => UserPreferencesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get profileId => getField<String>('profile_id');
  set profileId(String? value) => setField<String>('profile_id', value);

  DateTime? get preferenceDate => getField<DateTime>('preference_date');
  set preferenceDate(DateTime? value) =>
      setField<DateTime>('preference_date', value);
}
