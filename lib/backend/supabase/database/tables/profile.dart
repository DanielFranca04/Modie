import '../database.dart';

class ProfileTable extends SupabaseTable<ProfileRow> {
  @override
  String get tableName => 'profile';

  @override
  ProfileRow createRow(Map<String, dynamic> data) => ProfileRow(data);
}

class ProfileRow extends SupabaseDataRow {
  ProfileRow(super.data);

  @override
  SupabaseTable get table => ProfileTable();

  String get profileId => getField<String>('profile_id')!;
  set profileId(String value) => setField<String>('profile_id', value);

  DateTime? get dateOfBirth => getField<DateTime>('date_of_birth');
  set dateOfBirth(DateTime? value) =>
      setField<DateTime>('date_of_birth', value);

  String? get profilePicture => getField<String>('profile_picture');
  set profilePicture(String? value) =>
      setField<String>('profile_picture', value);

  String? get firstname => getField<String>('firstname');
  set firstname(String? value) => setField<String>('firstname', value);

  String? get surname => getField<String>('surname');
  set surname(String? value) => setField<String>('surname', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get aboutYou => getField<String>('about_you');
  set aboutYou(String? value) => setField<String>('about_you', value);

  int? get points => getField<int>('points');
  set points(int? value) => setField<int>('points', value);

  int? get invitationCodeCount => getField<int>('invitation_code_count');
  set invitationCodeCount(int? value) =>
      setField<int>('invitation_code_count', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);
}
