part of '../home.dart';

Widget _buildStartNewGameButton(VoidCallback onPressed) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: const EdgeInsets.only(
        bottom: Styles.bottomPadding,
        left: Styles.leftPadding,
        right: Styles.rightPadding,
      ),
      child: RoundedButton(
        title: 'Новая игра',
        onPressed: () {
          onPressed();
         
        },
      ),
    ),
  );
}
