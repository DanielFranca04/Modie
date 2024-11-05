import '../database.dart';

class FaqsOptionsTable extends SupabaseTable<FaqsOptionsRow> {
  @override
  String get tableName => 'faqs_options';

  @override
  FaqsOptionsRow createRow(Map<String, dynamic> data) => FaqsOptionsRow(data);
}

class FaqsOptionsRow extends SupabaseDataRow {
  FaqsOptionsRow(super.data);

  @override
  SupabaseTable get table => FaqsOptionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get faqId => getField<int>('faq_id');
  set faqId(int? value) => setField<int>('faq_id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String get content => getField<String>('content')!;
  set content(String value) => setField<String>('content', value);
}
