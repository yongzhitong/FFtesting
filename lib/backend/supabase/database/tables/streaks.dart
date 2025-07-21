import '../database.dart';

class StreaksTable extends SupabaseTable<StreaksRow> {
  @override
  String get tableName => 'streaks';

  @override
  StreaksRow createRow(Map<String, dynamic> data) => StreaksRow(data);
}

class StreaksRow extends SupabaseDataRow {
  StreaksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StreaksTable();

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);

  int? get currentStreak => getField<int>('current_streak');
  set currentStreak(int? value) => setField<int>('current_streak', value);

  DateTime? get lastActiveDate => getField<DateTime>('last_active_date');
  set lastActiveDate(DateTime? value) =>
      setField<DateTime>('last_active_date', value);
}
