// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:figma_design/presentation/screens/home_screen.dart';
import 'package:figma_design/presentation/screens/profile_screen.dart';
import 'package:figma_design/presentation/screens/status_screen.dart';
import 'package:figma_design/presentation/screens/task_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = 'Main-screen';
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = [
    HomeScreen(),
    TaskScreen(),
    StatusScreen(),
    ProfileScreen()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Color.fromRGBO(40, 35, 80, 1),
              icon: Icon(
                Icons.home,
                size: 25,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                backgroundColor: Color.fromRGBO(40, 35, 80, 1),
                icon: Icon(
                  Icons.check_circle_outline,
                  size: 25,
                ),
                label: 'Task'),
            BottomNavigationBarItem(
                backgroundColor: Color.fromRGBO(40, 35, 80, 1),
                icon: Icon(
                  Icons.settings_backup_restore_rounded,
                  size: 25,
                ),
                label: 'Status'),
            BottomNavigationBarItem(
                backgroundColor: Color.fromRGBO(40, 35, 80, 1),
                icon: Icon(
                  Icons.person,
                  size: 25,
                ),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
