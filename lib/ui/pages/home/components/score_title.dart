part of '../home.dart';

Widget _buildScoreTitle(int score) {
  return Positioned(
    top: Styles.topPadding,
    left: Styles.leftPadding,
    child: IgnorePointer(
      child: Text(
        'Очки: $score',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
