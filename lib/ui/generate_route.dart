import 'package:colors/core/constants/route_names.dart';
import 'package:colors/ui/pages/home/home.dart';
import 'package:colors/ui/pages/scene/scene.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteNames.home:
      return MaterialPageRoute(builder: (context) => HomePage());
    case RouteNames.scene:
      return MaterialPageRoute(builder: (context) => ScenePage());
    default:
      print('ERROR: No route defined for ${settings.name}');
      return MaterialPageRoute(builder: (context) => ScenePage());
  }
}
