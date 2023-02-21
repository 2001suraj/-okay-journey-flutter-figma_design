// ignore_for_file: must_be_immutable

import 'package:figma_design/presentation/routes/app_route.dart';
import 'package:figma_design/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    appRoute: AppRoute(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key, required this.appRoute});
  AppRoute appRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Figma design',
      initialRoute: MainScreen.routeName,
      onGenerateRoute: appRoute.ongenerateRoute,
    );
  }
}
