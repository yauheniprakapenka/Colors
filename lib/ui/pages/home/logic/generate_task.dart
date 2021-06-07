part of '../home.dart';

CurrentTask _generateTask() {
  final random = Random();
  final taskListLength = duckModel.length;
  final targetTyleLength = TargetType.values.length;

  return CurrentTask(
    taskIndex: random.nextInt(taskListLength),
    type: TargetType.values[random.nextInt(targetTyleLength)],
  );
}
