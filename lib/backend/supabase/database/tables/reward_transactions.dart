import '../database.dart';

class RewardTransactionsTable extends SupabaseTable<RewardTransactionsRow> {
  @override
  String get tableName => 'reward_transactions';

  @override
  RewardTransactionsRow createRow(Map<String, dynamic> data) =>
      RewardTransactionsRow(data);
}

class RewardTransactionsRow extends SupabaseDataRow {
  RewardTransactionsRow(super.data);

  @override
  SupabaseTable get table => RewardTransactionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get profileId => getField<String>('profile_id');
  set profileId(String? value) => setField<String>('profile_id', value);

  int? get pointsSpent => getField<int>('points_spent');
  set pointsSpent(int? value) => setField<int>('points_spent', value);

  DateTime? get spentAt => getField<DateTime>('spent_at');
  set spentAt(DateTime? value) => setField<DateTime>('spent_at', value);

  int? get rewardPointId => getField<int>('reward_point_id');
  set rewardPointId(int? value) => setField<int>('reward_point_id', value);
}
