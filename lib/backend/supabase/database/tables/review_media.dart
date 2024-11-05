import '../database.dart';

class ReviewMediaTable extends SupabaseTable<ReviewMediaRow> {
  @override
  String get tableName => 'review_media';

  @override
  ReviewMediaRow createRow(Map<String, dynamic> data) => ReviewMediaRow(data);
}

class ReviewMediaRow extends SupabaseDataRow {
  ReviewMediaRow(super.data);

  @override
  SupabaseTable get table => ReviewMediaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get reviewId => getField<int>('review_id');
  set reviewId(int? value) => setField<int>('review_id', value);

  String? get mediaUrl => getField<String>('media_url');
  set mediaUrl(String? value) => setField<String>('media_url', value);

  String? get mediaType => getField<String>('media_type');
  set mediaType(String? value) => setField<String>('media_type', value);
}
