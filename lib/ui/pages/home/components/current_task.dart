import 'package:colors/core/models/target_type.dart';
import 'package:colors/core/models/duck_model.dart';

class CurrentTask {
  final TargetType type;
  final int taskIndex;

  CurrentTask({
    required this.type,
    required this.taskIndex,
  });

  String get text {
    return type == TargetType.color
        ? duckModel[taskIndex].title
        : '$taskIndex';
  }
}