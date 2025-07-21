import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get passwordHash => getField<String>('password_hash');
  set passwordHash(String? value) => setField<String>('password_hash', value);

  String? get yearLevel => getField<String>('year_level');
  set yearLevel(String? value) => setField<String>('year_level', value);

  int? get iconId => getField<int>('icon_id');
  set iconId(int? value) => setField<int>('icon_id', value);

  String? get examBoard => getField<String>('exam_board');
  set examBoard(String? value) => setField<String>('exam_board', value);

  String? get examLevel => getField<String>('exam_level');
  set examLevel(String? value) => setField<String>('exam_level', value);
}
