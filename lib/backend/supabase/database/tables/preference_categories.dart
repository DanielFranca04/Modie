import '../database.dart';

class PreferenceCategoriesTable extends SupabaseTable<PreferenceCategoriesRow> {
  @override
  String get tableName => 'preference_categories';

  @override
  PreferenceCategoriesRow createRow(Map<String, dynamic> data) =>
      PreferenceCategoriesRow(data);
}

class PreferenceCategoriesRow extends SupabaseDataRow {
  PreferenceCategoriesRow(super.data);

  @override
  SupabaseTable get table => PreferenceCategoriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
