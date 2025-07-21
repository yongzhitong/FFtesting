import '../database.dart';

class SubmissionsTable extends SupabaseTable<SubmissionsRow> {
  @override
  String get tableName => 'submissions';

  @override
  SubmissionsRow createRow(Map<String, dynamic> data) => SubmissionsRow(data);
}

class SubmissionsRow extends SupabaseDataRow {
  SubmissionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SubmissionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get assignmentId => getField<int>('assignment_id');
  set assignmentId(int? value) => setField<int>('assignment_id', value);

  int? get answerId => getField<int>('answer_id');
  set answerId(int? value) => setField<int>('answer_id', value);

  String? get userAnswer => getField<String>('user_answer');
  set userAnswer(String? value) => setField<String>('user_answer', value);

  bool? get isCorrect => getField<bool>('is_correct');
  set isCorrect(bool? value) => setField<bool>('is_correct', value);

  int? get obtainedMarks => getField<int>('obtained_marks');
  set obtainedMarks(int? value) => setField<int>('obtained_marks', value);

  DateTime? get answeredAt => getField<DateTime>('answered_at');
  set answeredAt(DateTime? value) => setField<DateTime>('answered_at', value);
}
