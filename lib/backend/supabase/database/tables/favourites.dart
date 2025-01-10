import '../database.dart';

class FavouritesTable extends SupabaseTable<FavouritesRow> {
  @override
  String get tableName => 'favourites';

  @override
  FavouritesRow createRow(Map<String, dynamic> data) => FavouritesRow(data);
}

class FavouritesRow extends SupabaseDataRow {
  FavouritesRow(super.data);

  @override
  SupabaseTable get table => FavouritesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);
}
