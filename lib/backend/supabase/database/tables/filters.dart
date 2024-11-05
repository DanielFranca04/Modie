import '../database.dart';

class FiltersTable extends SupabaseTable<FiltersRow> {
  @override
  String get tableName => 'filters';

  @override
  FiltersRow createRow(Map<String, dynamic> data) => FiltersRow(data);
}

class FiltersRow extends SupabaseDataRow {
  FiltersRow(super.data);

  @override
  SupabaseTable get table => FiltersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
