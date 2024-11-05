import '../database.dart';

class RewardPointsTable extends SupabaseTable<RewardPointsRow> {
  @override
  String get tableName => 'reward_points';

  @override
  RewardPointsRow createRow(Map<String, dynamic> data) => RewardPointsRow(data);
}

class RewardPointsRow extends SupabaseDataRow {
  RewardPointsRow(super.data);

  @override
  SupabaseTable get table => RewardPointsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get profileId => getField<String>('profile_id');
  set profileId(String? value) => setField<String>('profile_id', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  int? get points => getField<int>('points');
  set points(int? value) => setField<int>('points', value);

  DateTime? get receivedAt => getField<DateTime>('received_at');
  set receivedAt(DateTime? value) => setField<DateTime>('received_at', value);

  DateTime? get expiresAt => getField<DateTime>('expires_at');
  set expiresAt(DateTime? value) => setField<DateTime>('expires_at', value);
}
