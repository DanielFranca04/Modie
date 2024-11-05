import '../database.dart';

class OptionsTable extends SupabaseTable<OptionsRow> {
  @override
  String get tableName => 'options';

  @override
  OptionsRow createRow(Map<String, dynamic> data) => OptionsRow(data);
}

class OptionsRow extends SupabaseDataRow {
  OptionsRow(super.data);

  @override
  SupabaseTable get table => OptionsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get quizId => getField<String>('quiz_id');
  set quizId(String? value) => setField<String>('quiz_id', value);

  String get optionText => getField<String>('option_text')!;
  set optionText(String value) => setField<String>('option_text', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  int? get order => getField<int>('Order');
  set order(int? value) => setField<int>('Order', value);
}
