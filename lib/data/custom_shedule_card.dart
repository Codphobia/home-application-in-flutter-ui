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
    return Card(
      elevation: 8,
      shadowColor: Colors.grey.shade300,
      child: Container(
        width: 360.w,
        height: 170.h,
        decoration: BoxDecoration(
          color: kcontainerColor,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(children: [
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            height: 30.h,
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
            height: 5.h,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Interval Time',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: kcardTextColor)),
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
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            const Dropdown(),
            Text('Hour',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kcardTextColor)),
            const DropdownTwo(),
            Text('Min',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kcardTextColor)),
            const VerticalDivider(
              color: kSaveButtonColor,
              thickness: 1,
            ),
            const Dropdown(),
            // SizedBox(
            //   width: 1.w,
            // ),
            Text('Hour',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kcardTextColor)),
            const DropdownTwo(),
            Text('Min',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: kcardTextColor)),
          ]),
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
        ]),
      ),
    );
  }
}
