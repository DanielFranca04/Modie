import '../database.dart';

class ManufacturingPracticesTable
    extends SupabaseTable<ManufacturingPracticesRow> {
  @override
  String get tableName => 'manufacturing_practices';

  @override
  ManufacturingPracticesRow createRow(Map<String, dynamic> data) =>
      ManufacturingPracticesRow(data);
}

class ManufacturingPracticesRow extends SupabaseDataRow {
  ManufacturingPracticesRow(super.data);

  @override
  SupabaseTable get table => ManufacturingPracticesTable();

  int get manufacturingId => getField<int>('manufacturing_id')!;
  set manufacturingId(int value) => setField<int>('manufacturing_id', value);

  String? get practice => getField<String>('practice');
  set practice(String? value) => setField<String>('practice', value);

  String? get enumType => getField<String>('enum_type');
  set enumType(String? value) => setField<String>('enum_type', value);
}
