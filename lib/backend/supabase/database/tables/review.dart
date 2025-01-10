import '../database.dart';

class ReviewTable extends SupabaseTable<ReviewRow> {
  @override
  String get tableName => 'review';

  @override
  ReviewRow createRow(Map<String, dynamic> data) => ReviewRow(data);
}

class ReviewRow extends SupabaseDataRow {
  ReviewRow(super.data);

  @override
  SupabaseTable get table => ReviewTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  String? get profileId => getField<String>('profile_id');
  set profileId(String? value) => setField<String>('profile_id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get reviewText => getField<String>('review_text');
  set reviewText(String? value) => setField<String>('review_text', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  bool get approved => getField<bool>('approved')!;
  set approved(bool value) => setField<bool>('approved', value);

  int? get overallScore => getField<int>('overall_score');
  set overallScore(int? value) => setField<int>('overall_score', value);

  bool get rejected => getField<bool>('rejected')!;
  set rejected(bool value) => setField<bool>('rejected', value);

  bool get contentDownloaded => getField<bool>('content_downloaded')!;
  set contentDownloaded(bool value) =>
      setField<bool>('content_downloaded', value);
}
