import '../database.dart';

class UserSubjectsTable extends SupabaseTable<UserSubjectsRow> {
  @override
  String get tableName => 'user_subjects';

  @override
  UserSubjectsRow createRow(Map<String, dynamic> data) => UserSubjectsRow(data);
}

class UserSubjectsRow extends SupabaseDataRow {
  UserSubjectsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserSubjectsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get subjectId => getField<int>('subject_id');
  set subjectId(int? value) => setField<int>('subject_id', value);
}
