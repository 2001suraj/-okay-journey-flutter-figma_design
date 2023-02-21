// ignore_for_file: prefer_const_constructors

import 'package:figma_design/presentation/screens/home_screen.dart';
import 'package:figma_design/presentation/screens/main_screen.dart';
import 'package:figma_design/presentation/screens/profile_screen.dart';
import 'package:figma_design/presentation/screens/status_screen.dart';
import 'package:figma_design/presentation/screens/task_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route? ongenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // Main screen
      case MainScreen.routeName:
        return MaterialPageRoute(builder: (context) => MainScreen());

      // Home screen
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      // Task screen
      case TaskScreen.routeName:
        return MaterialPageRoute(builder: (context) => TaskScreen());

      // Status screen
      case StatusScreen.routeName:
        return MaterialPageRoute(builder: (context) => StatusScreen());

      // Profile screen
      case ProfileScreen.routeName:
        return MaterialPageRoute(builder: (context) => ProfileScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  appBar: AppBar(),
                  body: Center(child: Text('Page Route Not Found ! ! !')),
                ));
    }
  }
}
