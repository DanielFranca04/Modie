import '../database.dart';

class UserPreferenceValuesTable extends SupabaseTable<UserPreferenceValuesRow> {
  @override
  String get tableName => 'user_preference_values';

  @override
  UserPreferenceValuesRow createRow(Map<String, dynamic> data) =>
      UserPreferenceValuesRow(data);
}

class UserPreferenceValuesRow extends SupabaseDataRow {
  UserPreferenceValuesRow(super.data);

  @override
  SupabaseTable get table => UserPreferenceValuesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userPreferenceId => getField<int>('user_preference_id');
  set userPreferenceId(int? value) =>
      setField<int>('user_preference_id', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  String? get value => getField<String>('value');
  set value(String? value) => setField<String>('value', value);
}
