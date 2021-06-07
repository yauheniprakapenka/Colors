part of '../home.dart';

Widget _buildTasktTitle(String target) {
  return Padding(
    padding: const EdgeInsets.only(
      bottom: Styles.bottomPadding + 32,
    ),
    child: Align(
      alignment: Alignment.bottomCenter,
      child: IgnorePointer(
        child: Text(
          'Цель\n$target',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    ),
  );
}
