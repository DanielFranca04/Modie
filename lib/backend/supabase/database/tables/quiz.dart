import '../database.dart';

class QuizTable extends SupabaseTable<QuizRow> {
  @override
  String get tableName => 'quiz';

  @override
  QuizRow createRow(Map<String, dynamic> data) => QuizRow(data);
}

class QuizRow extends SupabaseDataRow {
  QuizRow(super.data);

  @override
  SupabaseTable get table => QuizTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  String get question => getField<String>('question')!;
  set question(String value) => setField<String>('question', value);

  int? get minqstnumb => getField<int>('minqstnumb');
  set minqstnumb(int? value) => setField<int>('minqstnumb', value);

  int? get order => getField<int>('Order');
  set order(int? value) => setField<int>('Order', value);
}
