import '../database.dart';

class DailyAssignmentsTable extends SupabaseTable<DailyAssignmentsRow> {
  @override
  String get tableName => 'daily_assignments';

  @override
  DailyAssignmentsRow createRow(Map<String, dynamic> data) =>
      DailyAssignmentsRow(data);
}

class DailyAssignmentsRow extends SupabaseDataRow {
  DailyAssignmentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DailyAssignmentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get questionId => getField<int>('question_id');
  set questionId(int? value) => setField<int>('question_id', value);

  DateTime? get assignmentDate => getField<DateTime>('assignment_date');
  set assignmentDate(DateTime? value) =>
      setField<DateTime>('assignment_date', value);
}
