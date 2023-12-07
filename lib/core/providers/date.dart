import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'date.g.dart';

@riverpod
DateTime currentDate(CurrentDateRef _) => DateTime.now();

@riverpod
DateTime firstDayOfMonth(FirstDayOfMonthRef ref) {
  final date = ref.watch(currentDateProvider);
  return DateTime(date.year, date.month, 1);
}

@riverpod
DateTime lastDayOfMonth(LastDayOfMonthRef ref) {
  final date = ref.watch(currentDateProvider);
  return DateTime(date.year, date.month + 1, 0);
}