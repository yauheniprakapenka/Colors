import 'dart:async';
import 'dart:math';

import 'package:colors/core/config/config.dart';
import 'package:colors/core/models/duck_model.dart';
import 'package:colors/ui/shared/app_colors.dart';
import 'package:colors/ui/pages/scene/components/current_task.dart';
import 'package:colors/core/models/target_type.dart';
import 'package:colors/ui/pages/scene/logic/game_timer.dart';
import 'package:colors/ui/shared/styles.dart';
import 'package:colors/ui/widgets/duck/duck.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

part 'components/score_title.dart';
part 'components/left_time_title.dart';
part 'components/target_title.dart';
part 'components/background_image.dart';
part 'logic/generate_task.dart';
part 'logic/generate_duck_position.dart';
part 'components/ground.dart';

class ScenePage extends StatefulWidget {
  @override
  _ScenePageState createState() => _ScenePageState();
}

class _ScenePageState extends State<ScenePage> {
  final _gameTimer = GameTimer();

  late CurrentTask _currentTask;
  late List<Widget> _duckes;

  int _score = 0;

  @override
  void initState() {
    super.initState();
    _currentTask = _generateTask();

    _gameTimer.leftTime.addListener(
      () {
        if (_gameTimer.leftTime.value <= 0) {
          print('time is over');
          setState(() {});
        }
      },
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _startNewGame();
  }

  void dispose() {
    _gameTimer.timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(children: [
        _buildGround(context),
        _buildBackgroundImage(context),
        ..._duckes,
        _buildScoreTitle(_score),
        _buildLeftTimeTitle(_gameTimer.leftTime),
        _buildTasktTitle(_currentTask.text),

        // Container(
        //   width: 140,
        //   height: 80,
        //   decoration: BoxDecoration(
        //     color: Colors.black,
        //     border: Border.all(
        //       width: 2,
        //       color: Colors.green,
        //     ),
        //   ),
        // ),
      ]),
    );
  }

  List<Widget> _buildDucks(BuildContext context) {
    return List.generate(
      duckModel.length,
      (duckIndex) => _generateDuckPosition(
        context,
        GestureDetector(
          child: Duck(
            backgroundColor: duckModel[duckIndex].duckColor,
            textColor: duckModel[duckIndex].textColor,
            text: '$duckIndex',
            image: duckModel[duckIndex].image,
          ),
          onTap: () {
            _handleTapDuck(duckIndex);
          },
        ),
      ),
    );
  }

  void _handleTapDuck(int selectedDuckIndex) {
    final didScore = selectedDuckIndex == _currentTask.taskIndex;
    didScore ? _score++ : _score--;
    generateRound();

    Future.delayed(
      Duration(milliseconds: Config.delayAfterTapOnDuck),
      () {
        setState(() {});
      },
    );
  }

  void _startNewGame() {
    generateRound();
    _score = 0;
    _gameTimer.startGame();
    setState(() {});
  }

  void generateRound() {
    _currentTask = _generateTask();
    _duckes = _buildDucks(context);
  }
}
