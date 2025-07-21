import '../database.dart';

class AnswersTable extends SupabaseTable<AnswersRow> {
  @override
  String get tableName => 'answers';

  @override
  AnswersRow createRow(Map<String, dynamic> data) => AnswersRow(data);
}

class AnswersRow extends SupabaseDataRow {
  AnswersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AnswersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get questionId => getField<int>('question_id');
  set questionId(int? value) => setField<int>('question_id', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  bool? get isCorrect => getField<bool>('is_correct');
  set isCorrect(bool? value) => setField<bool>('is_correct', value);

  String? get diagramLink => getField<String>('diagram_link');
  set diagramLink(String? value) => setField<String>('diagram_link', value);
}
