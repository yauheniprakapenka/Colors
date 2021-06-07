import 'dart:async';

import 'package:colors/core/config/config.dart';
import 'package:flutter/foundation.dart';

class GameTimer {
  Timer? _timer;
  final leftTime = ValueNotifier(Config.gameTime);

  void startGame() {
    _timer?.cancel();
    leftTime.value = Config.gameTime;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      leftTime.value--;
      if (leftTime.value <= 0) _timer?.cancel();
    });
  }
}