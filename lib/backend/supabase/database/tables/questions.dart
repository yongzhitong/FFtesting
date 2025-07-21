import '../database.dart';

class QuestionsTable extends SupabaseTable<QuestionsRow> {
  @override
  String get tableName => 'questions';

  @override
  QuestionsRow createRow(Map<String, dynamic> data) => QuestionsRow(data);
}

class QuestionsRow extends SupabaseDataRow {
  QuestionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => QuestionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  int? get marks => getField<int>('marks');
  set marks(int? value) => setField<int>('marks', value);

  int? get difficulty => getField<int>('difficulty');
  set difficulty(int? value) => setField<int>('difficulty', value);

  String? get diagramLink => getField<String>('diagram_link');
  set diagramLink(String? value) => setField<String>('diagram_link', value);

  int? get topicId => getField<int>('topic_id');
  set topicId(int? value) => setField<int>('topic_id', value);
}
