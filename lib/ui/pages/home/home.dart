import 'package:colors/core/constants/route_names.dart';
import 'package:flutter/material.dart';

part 'components/title.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: _buildTitle(),
          ),
          Spacer(),
          OutlinedButton(
            child: _buildText(
              'GAME A     3 DUCK',
              Color(0xFFd37f33),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                RouteNames.scene,
              );
            },
          ),
          Spacer(),
          _buildText(
            'TOP SCORE  =  12000',
            Color(0xFF3ea632),
          ),
          Container(height: 16),
          _buildText(
            '©1985 NINTENDO CO.,LTD.',
            Colors.white,
          ),
          Container(height: 60),
        ],
      ),
    );
  }

  Widget _buildText(
    String title,
    Color textColor,
  ) {
    return Text(
      title,
      style: TextStyle(
        color: textColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
