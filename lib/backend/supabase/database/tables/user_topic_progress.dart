import '../database.dart';

class UserTopicProgressTable extends SupabaseTable<UserTopicProgressRow> {
  @override
  String get tableName => 'user_topic_progress';

  @override
  UserTopicProgressRow createRow(Map<String, dynamic> data) =>
      UserTopicProgressRow(data);
}

class UserTopicProgressRow extends SupabaseDataRow {
  UserTopicProgressRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserTopicProgressTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get topicId => getField<int>('topic_id');
  set topicId(int? value) => setField<int>('topic_id', value);

  bool? get completed => getField<bool>('completed');
  set completed(bool? value) => setField<bool>('completed', value);

  DateTime? get completedAt => getField<DateTime>('completed_at');
  set completedAt(DateTime? value) => setField<DateTime>('completed_at', value);
}
