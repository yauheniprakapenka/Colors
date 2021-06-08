import 'package:colors/core/models/target_type.dart';
import 'package:colors/core/models/duck_model.dart';

class CurrentTask {
  final TargetType targetType;
  final int taskIndex;

  CurrentTask({
    required this.targetType,
    required this.taskIndex,
  });

  String get text {
    return targetType == TargetType.color
        ? duckModel[taskIndex].title
        : '$taskIndex';
  }
}