import 'package:flutter/material.dart';

class DuckModel {
  final Color textColor, duckColor;
  final String title;
  final ImageProvider image;

  DuckModel({
    required this.title,
    required this.textColor,
    required this.duckColor,
    required this.image,
  });
}

final duckModel = <DuckModel>[
  DuckModel(
    title: 'синяя утка',
    textColor: Colors.yellow,
    duckColor: Colors.blue,
    image: AssetImage('assets/ducks/blue/blue_duck_top_right_middle.png'),
  ),
  DuckModel(
    title: 'черная утка',
    textColor: Colors.orange,
    duckColor: Colors.black,
    image: AssetImage('assets/ducks/dark/dark_duck_top_right_middle.png'),
  ),
  DuckModel(
    title: 'красная утка',
    textColor: Colors.white,
    duckColor: Colors.red,
    image: AssetImage('assets/ducks/orange/orange_duck_top_left_middle.png'),
  ),
];
