import '../database.dart';

class ReviewScoresTable extends SupabaseTable<ReviewScoresRow> {
  @override
  String get tableName => 'review_scores';

  @override
  ReviewScoresRow createRow(Map<String, dynamic> data) => ReviewScoresRow(data);
}

class ReviewScoresRow extends SupabaseDataRow {
  ReviewScoresRow(super.data);

  @override
  SupabaseTable get table => ReviewScoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get reviewId => getField<int>('review_id');
  set reviewId(int? value) => setField<int>('review_id', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  int? get score => getField<int>('score');
  set score(int? value) => setField<int>('score', value);

  String? get smallReview => getField<String>('small_review');
  set smallReview(String? value) => setField<String>('small_review', value);
}
