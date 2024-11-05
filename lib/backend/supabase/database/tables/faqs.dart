import '../database.dart';

class FaqsTable extends SupabaseTable<FaqsRow> {
  @override
  String get tableName => 'faqs';

  @override
  FaqsRow createRow(Map<String, dynamic> data) => FaqsRow(data);
}

class FaqsRow extends SupabaseDataRow {
  FaqsRow(super.data);

  @override
  SupabaseTable get table => FaqsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);
}
