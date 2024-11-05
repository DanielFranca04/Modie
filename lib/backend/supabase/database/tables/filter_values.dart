import '../database.dart';

class FilterValuesTable extends SupabaseTable<FilterValuesRow> {
  @override
  String get tableName => 'filter_values';

  @override
  FilterValuesRow createRow(Map<String, dynamic> data) => FilterValuesRow(data);
}

class FilterValuesRow extends SupabaseDataRow {
  FilterValuesRow(super.data);

  @override
  SupabaseTable get table => FilterValuesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get filterId => getField<int>('filter_id');
  set filterId(int? value) => setField<int>('filter_id', value);

  String? get value => getField<String>('value');
  set value(String? value) => setField<String>('value', value);
}
