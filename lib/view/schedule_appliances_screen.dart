import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_application_project/utils/const.dart';

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
        body: Column(children: [
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
          Card(
            child: Container(
              width: 352.w,
              height: 168.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Column(children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        child: Placeholder(),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Text('Heater')
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.w,
                ),
                Container(
                  width: 332.w,
                  height: 96.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Row(children: []),
                )
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
