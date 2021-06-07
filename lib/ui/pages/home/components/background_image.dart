part of '../home.dart';

Widget _buildBackgroundImage(BuildContext context) {
  return Positioned(
    bottom: Styles.bottomGroundPadding,
    child: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        'assets/illustration/nature.png',
        fit: BoxFit.fitWidth,
      ),
    ),
  );
}
