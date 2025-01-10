import '../database.dart';

class CartTable extends SupabaseTable<CartRow> {
  @override
  String get tableName => 'cart';

  @override
  CartRow createRow(Map<String, dynamic> data) => CartRow(data);
}

class CartRow extends SupabaseDataRow {
  CartRow(super.data);

  @override
  SupabaseTable get table => CartTable();

  int get cartId => getField<int>('cart_id')!;
  set cartId(int value) => setField<int>('cart_id', value);

  String? get profileId => getField<String>('profile_id');
  set profileId(String? value) => setField<String>('profile_id', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);

  String? get size => getField<String>('size');
  set size(String? value) => setField<String>('size', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);
}
