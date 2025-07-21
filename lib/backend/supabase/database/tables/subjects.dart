import '../database.dart';

class SubjectsTable extends SupabaseTable<SubjectsRow> {
  @override
  String get tableName => 'subjects';

  @override
  SubjectsRow createRow(Map<String, dynamic> data) => SubjectsRow(data);
}

class SubjectsRow extends SupabaseDataRow {
  SubjectsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SubjectsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get code => getField<int>('code');
  set code(int? value) => setField<int>('code', value);

  int? get paperNumber => getField<int>('paper_number');
  set paperNumber(int? value) => setField<int>('paper_number', value);

  String? get paperName => getField<String>('paper_name');
  set paperName(String? value) => setField<String>('paper_name', value);

  String? get examBoard => getField<String>('exam_board');
  set examBoard(String? value) => setField<String>('exam_board', value);

  String? get examLevel => getField<String>('exam_level');
  set examLevel(String? value) => setField<String>('exam_level', value);
}
