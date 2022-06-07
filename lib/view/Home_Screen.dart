import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_application_project/data/custom_container.dart';
import 'package:home_application_project/data/cutom_widgets.dart';
import 'package:home_application_project/utils/const.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 54.h, left: 31.w, right: 207.w),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Placeholder(),
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Text(
                    'Aqib Javed',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 171.w),
              child: CircleAvatar(
                child: Placeholder(),
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            CustomContainer(),
            SizedBox(
              height: 37.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 142.w),
              child: Text(
                'Connected Appliances',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24.sp),
              ),
            ),
            SizedBox(
              height: 37.h,
            ),
            MyWidget(
                titleForRowOne: 'Heater',
                titleForRowTwo: 'Humidifier',
                isSwitchedOne: false,
                isSwitchedTwo: false,
                checkForOne: false,
                checkForTwo: false),
            SizedBox(
              height: 25.h,
            ),
            MyWidget(
                titleForRowOne: 'Fan',
                titleForRowTwo: 'Water Pump',
                isSwitchedOne: false,
                isSwitchedTwo: false,
                checkForOne: false,
                checkForTwo: false),
            SizedBox(
              height: 25.h,
            ),
            MyWidget(
                titleForRowOne: 'Heater',
                titleForRowTwo: 'Humidifier',
                isSwitchedOne: false,
                isSwitchedTwo: false,
                checkForOne: false,
                checkForTwo: false),
            SizedBox(
              height: 25.h,
            ),
            MyWidget(
                titleForRowOne: 'Fan',
                titleForRowTwo: 'Water Pump',
                isSwitchedOne: false,
                isSwitchedTwo: false,
                checkForOne: false,
                checkForTwo: false),
            SizedBox(
              height: 20.h,
            ),
          ]),
        ),
      ),
    );
  }
}
