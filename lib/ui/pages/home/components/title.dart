part of '../home.dart';

Widget _buildTitle() {
  return Column(
    children: [
      Align(
        alignment: Alignment.centerLeft,
        child: _buildText(
          'DUCK',
        ),
      ),
      Container(height: 8),
      _buildHorizontalLine(),
      Container(height: 8),
      Align(
        alignment: Alignment.centerRight,
        child: _buildText(
          'HUNT',
        ),
      ),
    ],
  );
}

Widget _buildText(
  String title,
) {
  return Text(
    title,
    style: TextStyle(
      color: Color(
        0xFF2ae1b8,
      ),
      fontSize: 80,
      fontWeight: FontWeight.w900,
    ),
  );
}

Widget _buildHorizontalLine() {
  return Container(
    height: 4,
    color: Color(0xFFd37f33),
  );
}
