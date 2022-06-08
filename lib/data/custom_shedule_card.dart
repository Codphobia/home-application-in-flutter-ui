import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_application_project/data/drop_down_meanu_widget.dart';
import 'package:home_application_project/utils/const.dart';

class CustomSheduleCard extends StatelessWidget {
  String title, icon;
  CustomSheduleCard({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 352.w,
      height: 168.h,
      decoration: BoxDecoration(
          color: kcontainerColor,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: kSaveButtonColor,
            width: 1,
          )),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                width: 23.w,
                height: 30.h,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(title,
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: kcardTextColor))
            ],
          ),
        ),
        SizedBox(
          height: 4.w,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IntrinsicHeight(
            child: Row(
              children: [
                Text('Interval Time',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: kcardTextColor)),
                SizedBox(
                  width: 5.w,
                ),
                const VerticalDivider(
                  color: kSaveButtonColor,
                  thickness: 1,
                ),
                Text('Running Time',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: kcardTextColor)),
              ],
            ),
          ),
        ]),
        SizedBox(
          height: 5.h,
        ),
        Expanded(
          child: Row(children: [
            Expanded(
              child: Row(children: [
                SizedBox(
                  width: 16.w,
                ),
                const Dropdown(),
                SizedBox(
                  width: 1.w,
                ),
                Text('Hour',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kcardTextColor)),
                SizedBox(
                  width: 7.w,
                ),
                const DropdownTwo(),
                SizedBox(
                  width: 1.w,
                ),
                Text('Min',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kcardTextColor)),
              ]),
            ),
            const VerticalDivider(
              color: kSaveButtonColor,
              thickness: 1,
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: 3.w,
                  ),
                  const Dropdown(),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text('Hour',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: kcardTextColor)),
                  SizedBox(
                    width: 7.w,
                  ),
                  const DropdownTwo(),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text('Min',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: kcardTextColor)),
                ],
              ),
            ),
          ]),
        ),
        SizedBox(
          height: 7.h,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kResetButtonColor, // Background color
              ),
              onPressed: () {},
              child: const Text('Reset')),
          SizedBox(
            width: 62.w,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kSaveButtonColor, // Background color
              ),
              onPressed: () {},
              child: const Text('Save')),
        ]),
        SizedBox(
          height: 7.h,
        ),
      ]),
    );
  }
}
