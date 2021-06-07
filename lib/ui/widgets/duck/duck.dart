import 'package:flutter/material.dart';

class Duck extends StatelessWidget {
  final Color backgroundColor, textColor;
  final String text;
  final ImageProvider image;

  Duck({
    required this.backgroundColor,
    required this.text,
    required this.textColor,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final size = 75.0;

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: image,
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
