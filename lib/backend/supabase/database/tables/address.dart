import '../database.dart';

class AddressTable extends SupabaseTable<AddressRow> {
  @override
  String get tableName => 'address';

  @override
  AddressRow createRow(Map<String, dynamic> data) => AddressRow(data);
}

class AddressRow extends SupabaseDataRow {
  AddressRow(super.data);

  @override
  SupabaseTable get table => AddressTable();

  int get addressId => getField<int>('address_id')!;
  set addressId(int value) => setField<int>('address_id', value);

  String? get profileId => getField<String>('profile_id');
  set profileId(String? value) => setField<String>('profile_id', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get surname => getField<String>('surname');
  set surname(String? value) => setField<String>('surname', value);

  String? get dialingCode => getField<String>('dialing_code');
  set dialingCode(String? value) => setField<String>('dialing_code', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get address1 => getField<String>('address_1');
  set address1(String? value) => setField<String>('address_1', value);

  String? get address2 => getField<String>('address_2');
  set address2(String? value) => setField<String>('address_2', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get postalCode => getField<String>('postal_code');
  set postalCode(String? value) => setField<String>('postal_code', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);
}
