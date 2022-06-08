import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_application_project/utils/const.dart';

import '../utils/page_route_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_selectedIndex],
      bottomNavigationBar: SizedBox(
        width: 414.w,
        height: 80.h,
        child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            elevation: 8,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: kSaveButtonColor,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.schedule), label: 'SChedule'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.co_present_outlined), label: 'Preset'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ]),
      ),
    );
  }
}
