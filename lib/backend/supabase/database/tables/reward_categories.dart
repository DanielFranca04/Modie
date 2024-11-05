import '../database.dart';

class RewardCategoriesTable extends SupabaseTable<RewardCategoriesRow> {
  @override
  String get tableName => 'reward_categories';

  @override
  RewardCategoriesRow createRow(Map<String, dynamic> data) =>
      RewardCategoriesRow(data);
}

class RewardCategoriesRow extends SupabaseDataRow {
  RewardCategoriesRow(super.data);

  @override
  SupabaseTable get table => RewardCategoriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
