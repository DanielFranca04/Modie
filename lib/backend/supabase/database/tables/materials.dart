import '../database.dart';

class MaterialsTable extends SupabaseTable<MaterialsRow> {
  @override
  String get tableName => 'materials';

  @override
  MaterialsRow createRow(Map<String, dynamic> data) => MaterialsRow(data);
}

class MaterialsRow extends SupabaseDataRow {
  MaterialsRow(super.data);

  @override
  SupabaseTable get table => MaterialsTable();

  int get materialId => getField<int>('material_id')!;
  set materialId(int value) => setField<int>('material_id', value);

  String? get materialName => getField<String>('material_name');
  set materialName(String? value) => setField<String>('material_name', value);
}
