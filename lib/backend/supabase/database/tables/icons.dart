import '../database.dart';

class IconsTable extends SupabaseTable<IconsRow> {
  @override
  String get tableName => 'icons';

  @override
  IconsRow createRow(Map<String, dynamic> data) => IconsRow(data);
}

class IconsRow extends SupabaseDataRow {
  IconsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IconsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
