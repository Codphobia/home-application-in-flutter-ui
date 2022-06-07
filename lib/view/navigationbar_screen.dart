import 'package:flutter/material.dart';

import '../utils/page_route_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          elevation: 8,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: 'home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'SChedule'),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Preset'),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Profile'),
          ]),
    );
  }
}
