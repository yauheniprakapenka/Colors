part of '../scene.dart';

Widget _buildLeftTimeTitle(ValueListenable<Object> leftTime) {
  return Positioned(
    top: Styles.topPadding,
    right: Styles.rightPadding,
    child: IgnorePointer(
      child: ValueListenableBuilder(
        valueListenable: leftTime,
        builder: (context, leftTime, widget) {
          return Text(
            'Осталось: $leftTime',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          );
        },
      ),
    ),
  );
}
