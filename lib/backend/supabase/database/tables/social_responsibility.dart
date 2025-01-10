import '../database.dart';

class SocialResponsibilityTable extends SupabaseTable<SocialResponsibilityRow> {
  @override
  String get tableName => 'social_responsibility';

  @override
  SocialResponsibilityRow createRow(Map<String, dynamic> data) =>
      SocialResponsibilityRow(data);
}

class SocialResponsibilityRow extends SupabaseDataRow {
  SocialResponsibilityRow(super.data);

  @override
  SupabaseTable get table => SocialResponsibilityTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get question => getField<String>('question');
  set question(String? value) => setField<String>('question', value);
}
