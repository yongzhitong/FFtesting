import '../database.dart';

class TopicsTable extends SupabaseTable<TopicsRow> {
  @override
  String get tableName => 'topics';

  @override
  TopicsRow createRow(Map<String, dynamic> data) => TopicsRow(data);
}

class TopicsRow extends SupabaseDataRow {
  TopicsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TopicsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get subjectId => getField<int>('subject_id');
  set subjectId(int? value) => setField<int>('subject_id', value);
}
