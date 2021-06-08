part of '../scene.dart';

Widget _buildGround(BuildContext context) {
  return Positioned(
    bottom: 0,
    left: 0,
    child: Container(
      height: Styles.bottomGroundPadding,
      width: MediaQuery.of(context).size.width,
      color: AppColors.groundColor,
    ),
  );
}
