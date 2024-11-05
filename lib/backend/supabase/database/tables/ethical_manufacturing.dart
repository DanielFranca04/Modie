import '../database.dart';

class EthicalManufacturingTable extends SupabaseTable<EthicalManufacturingRow> {
  @override
  String get tableName => 'ethical_manufacturing';

  @override
  EthicalManufacturingRow createRow(Map<String, dynamic> data) =>
      EthicalManufacturingRow(data);
}

class EthicalManufacturingRow extends SupabaseDataRow {
  EthicalManufacturingRow(super.data);

  @override
  SupabaseTable get table => EthicalManufacturingTable();

  int get ethicalId => getField<int>('ethical_id')!;
  set ethicalId(int value) => setField<int>('ethical_id', value);

  String? get ethical => getField<String>('ethical');
  set ethical(String? value) => setField<String>('ethical', value);
}
