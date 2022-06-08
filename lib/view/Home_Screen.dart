import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_application_project/data/custom_container.dart';
import 'package:home_application_project/data/cutom_widgets.dart';
import 'package:home_application_project/data/imagepath.dart';
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
                    radius: 18,
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/83277996?s=400&u=0828b742cb111f8be1236a227fabdc1def3abd35&v=4'),
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
              child: SvgPicture.asset(
                kVideoIcon,
                width: 60.w,
                height: 60.h,
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            CustomContainer(
                iconDataForContainerOne: kTeampIcon,
                iconDataForContainerTwo: khumdifyIcon),
            SizedBox(
              height: 37.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 100.w),
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
                checkForTwo: false,
                iconDataOne: kHeaterIcon,
                iconDataTwo: kHumidifierIcon),
            SizedBox(
              height: 25.h,
            ),
            MyWidget(
                titleForRowOne: 'Fan',
                titleForRowTwo: 'Water Pump',
                isSwitchedOne: false,
                isSwitchedTwo: false,
                checkForOne: false,
                checkForTwo: false,
                iconDataOne: kFanIcon,
                iconDataTwo: kWaterpPumpIcon),
            SizedBox(
              height: 25.h,
            ),
            MyWidget(
                titleForRowOne: 'Heater',
                titleForRowTwo: 'Humidifier',
                isSwitchedOne: false,
                isSwitchedTwo: false,
                checkForOne: false,
                checkForTwo: false,
                iconDataOne: kLightIcon,
                iconDataTwo: kIntakeIcon),
            SizedBox(
              height: 25.h,
            ),
            MyWidget(
                titleForRowOne: 'Fan',
                titleForRowTwo: 'Water Pump',
                isSwitchedOne: false,
                isSwitchedTwo: false,
                checkForOne: false,
                checkForTwo: false,
                iconDataOne: kExhausIcon,
                iconDataTwo: kMotorIcon),
            SizedBox(
              height: 20.h,
            ),
          ]),
        ),
      ),
    );
  }
}
