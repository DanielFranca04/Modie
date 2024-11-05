import '../database.dart';

class InvitationTable extends SupabaseTable<InvitationRow> {
  @override
  String get tableName => 'invitation';

  @override
  InvitationRow createRow(Map<String, dynamic> data) => InvitationRow(data);
}

class InvitationRow extends SupabaseDataRow {
  InvitationRow(super.data);

  @override
  SupabaseTable get table => InvitationTable();

  int get invitationId => getField<int>('invitation_id')!;
  set invitationId(int value) => setField<int>('invitation_id', value);

  String? get profileId => getField<String>('profile_id');
  set profileId(String? value) => setField<String>('profile_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  DateTime? get time => getField<DateTime>('time');
  set time(DateTime? value) => setField<DateTime>('time', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);
}
