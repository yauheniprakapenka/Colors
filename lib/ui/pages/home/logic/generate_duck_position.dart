part of '../home.dart';

Positioned _generateDuckPosition(BuildContext context, Widget child) {
  final random = Random();
  final screenSize = MediaQuery.of(context).size;
  final screenWidth = screenSize.width;
  final screenHeight = screenSize.height;

  final bottomPadding = screenHeight - (Styles.bottomGroundPadding * 3);

  int leftPadding = random.nextInt(screenWidth.toInt());
  int topPadding = random.nextInt(bottomPadding.toInt());

  while (leftPadding > (screenWidth - Styles.duckSize)) {
    leftPadding = random.nextInt(screenWidth.toInt());
  }

  while (topPadding > (bottomPadding - Styles.duckSize)) {
    topPadding = random.nextInt(screenWidth.toInt());
  }

  return Positioned(
    top: topPadding.toDouble(),
    left: leftPadding.toDouble(),
    child: child,
  );
}
