import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_application_project/data/imagepath.dart';
import 'package:home_application_project/utils/const.dart';

class ReusableRow extends StatelessWidget {
  String title, subTitleOne, subTitleTwo, icon;
  ReusableRow({
    required this.title,
    required this.subTitleOne,
    required this.subTitleTwo,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          children: [
            SvgPicture.asset(
              icon,
              width: 25.w,
              height: 25.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              title,
              style: TextStyle(
                  color: kProfileSubTextColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600),
            ),
          ],
        )),
        Expanded(
            child: Text(
          subTitleOne,
          style: TextStyle(
              color: kProfileSubTextColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400),
        )),
        Expanded(
            child: Text(
          subTitleTwo,
          style: TextStyle(
              color: kProfileSubTextColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400),
        )),
      ],
    );
  }
}
