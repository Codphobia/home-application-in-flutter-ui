import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_application_project/data/custom_row_widget.dart';
import 'package:home_application_project/data/imagepath.dart';
import 'package:home_application_project/utils/const.dart';

class PresetProgramScreen extends StatefulWidget {
  PresetProgramScreen({Key? key}) : super(key: key);

  @override
  State<PresetProgramScreen> createState() => _PresetProgramScreenState();
}

class _PresetProgramScreenState extends State<PresetProgramScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    bottom: 7.h, right: 77.w, left: 77.w, top: 45.h),
                child: Text(
                  'PRESET PROGRAM',
                  style: TextStyle(
                      color: kProfileSubTextColor,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: Card(
                  elevation: 8,
                  shadowColor: Colors.grey.shade300,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: kContainerBackgroundColor,
                    ),
                    width: 371.w,
                    height: 810.h,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Interval Time',
                                style: TextStyle(
                                    color: kProfileSubTextColor,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 35.w,
                              ),
                              Text(
                                'Duration',
                                style: TextStyle(
                                    color: kProfileSubTextColor,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 18.w,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          ReusableRow(
                              title: 'Heater',
                              subTitleOne: '25 Mins',
                              subTitleTwo: '02 Mins',
                              icon: kHeaterIcon),
                          SizedBox(
                            height: 18.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: const Divider(),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          ReusableRow(
                              title: 'Humidifier',
                              subTitleOne: '25 Mins',
                              subTitleTwo: '02 Mins',
                              icon: kHumidifierIcon),
                          SizedBox(
                            height: 18.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: const Divider(),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          ReusableRow(
                              title: 'Fan',
                              subTitleOne: '1 Hour',
                              subTitleTwo: '02 Mins',
                              icon: kFanIcon),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: const Divider(),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          ReusableRow(
                              title: 'Water Pump',
                              subTitleOne: '3 Hour',
                              subTitleTwo: '01 Mins',
                              icon: kWaterpPumpIcon),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: const Divider(),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          ReusableRow(
                              title: 'Lights',
                              subTitleOne: '10 Hour',
                              subTitleTwo: '16 Hour',
                              icon: kLightIcon),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: const Divider(),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          ReusableRow(
                              title: 'Intake',
                              subTitleOne: '20 Mins',
                              subTitleTwo: '05 Mins',
                              icon: kIntakeIcon),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: const Divider(),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          ReusableRow(
                              title: 'Exhaust',
                              subTitleOne: '20 Mins',
                              subTitleTwo: '05 Mins',
                              icon: kExhausIcon),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: const Divider(),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          ReusableRow(
                              title: 'Motor',
                              subTitleOne: '10 Hour',
                              subTitleTwo: '16 Hour',
                              icon: kMotorIcon),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 52.w),
                child: Row(
                  children: [
                    Expanded(
                      child: SvgPicture.asset(
                        kPresetButton,
                        width: 121.w,
                        height: 38.h,
                      ),
                    ),
                    Expanded(
                      child: SvgPicture.asset(
                        kPresetButtonTwo,
                        width: 121.w,
                        height: 38.h,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
