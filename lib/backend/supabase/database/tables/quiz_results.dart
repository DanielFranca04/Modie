import '../database.dart';

class QuizResultsTable extends SupabaseTable<QuizResultsRow> {
  @override
  String get tableName => 'quiz_results';

  @override
  QuizResultsRow createRow(Map<String, dynamic> data) => QuizResultsRow(data);
}

class QuizResultsRow extends SupabaseDataRow {
  QuizResultsRow(super.data);

  @override
  SupabaseTable get table => QuizResultsTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get quizId => getField<String>('quiz_id')!;
  set quizId(String value) => setField<String>('quiz_id', value);

  List<String> get answers => getListField<String>('answers');
  set answers(List<String> value) => setListField<String>('answers', value);

  DateTime? get answeredAt => getField<DateTime>('answered_at');
  set answeredAt(DateTime? value) => setField<DateTime>('answered_at', value);
}
