import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_application_project/data/drop_down_meanu_widget.dart';
import 'package:home_application_project/data/imagepath.dart';
import 'package:home_application_project/utils/const.dart';

import '../data/custom_shedule_card.dart';

class SCheduleAppliancesScreen extends StatefulWidget {
  SCheduleAppliancesScreen({Key? key}) : super(key: key);

  @override
  State<SCheduleAppliancesScreen> createState() =>
      _SCheduleAppliancesScreenState();
}

class _SCheduleAppliancesScreenState extends State<SCheduleAppliancesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(left: 51.w, right: 41.w, top: 63.h),
              child: Text(
                'SCHEDULE APPLIANCES',
                style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            CustomSheduleCard(title: 'Heater', icon: kHeaterIcon),
            SizedBox(
              height: 20.h,
            ),
            CustomSheduleCard(title: 'Humidifier', icon: kHumidifierIcon),
            SizedBox(
              height: 20.h,
            ),
            CustomSheduleCard(title: 'Fan', icon: kFanIcon),
            SizedBox(
              height: 20.h,
            ),
            CustomSheduleCard(title: 'Water Pump', icon: kWaterpPumpIcon),
            SizedBox(
              height: 20.h,
            ),
            CustomSheduleCard(title: 'Intake', icon: kIntakeIcon),
            SizedBox(
              height: 20.h,
            ),
            CustomSheduleCard(title: 'Exhaust', icon: kExhausIcon),
            SizedBox(
              height: 20.h,
            ),
            CustomSheduleCard(title: 'Motor', icon: kMotorIcon),
            SizedBox(
              height: 9.h,
            ),
          ]),
        ),
      ),
    );
  }
}
