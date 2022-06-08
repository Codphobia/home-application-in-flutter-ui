import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_application_project/utils/const.dart';

class CustomContainer extends StatelessWidget {
  String iconDataForContainerOne, iconDataForContainerTwo;
  CustomContainer(
      {Key? key,
      required this.iconDataForContainerOne,
      required this.iconDataForContainerTwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 48.w),
      child: Row(children: [
        Expanded(
          child: Card(
            elevation: 8,
            shadowColor: Colors.grey.shade300,
            child: Container(
              decoration: BoxDecoration(
                color: kContainerBackgroundColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
              width: 138.sp,
              height: 130.sp,
              child: Column(
                children: [
                  SizedBox(
                    height: 9.h,
                  ),
                  SvgPicture.asset(
                    iconDataForContainerOne,
                    width: 20.w,
                    height: 25.h,
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.w),
                    child: Text(
                      'Temperature',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: kCelsiusTextColor),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '29',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25.71.sp,
                            color: kCelsiusColor),
                      ),
                      SizedBox(
                        width: 3.3.w,
                      ),
                      Text(
                        "'C",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11.79.sp,
                            color: kCelsiusColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 44.w,
        ),
        Expanded(
          child: Card(
            elevation: 8,
            shadowColor: Colors.grey.shade300,
            child: Container(
              decoration: BoxDecoration(
                color: kContainerBackgroundColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
              width: 138.sp,
              height: 130.sp,
              child: Column(
                children: [
                  SizedBox(
                    height: 9.h,
                  ),
                  SvgPicture.asset(
                    iconDataForContainerTwo,
                    width: 20.w,
                    height: 25.h,
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.w),
                    child: Text(
                      'Humidity',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: kCelsiusTextColor),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '70',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25.71.sp,
                            color: kCelsiusColor),
                      ),
                      SizedBox(
                        width: 3.3.w,
                      ),
                      Text(
                        "%",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11.79.sp,
                            color: kCelsiusColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
