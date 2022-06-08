import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_application_project/data/imagepath.dart';
import 'package:home_application_project/utils/const.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80.h, left: 142.w, right: 143.w),
              child: Text(
                'PROFILE',
                style: TextStyle(
                    color: kProfileTextColor,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/83277996?s=400&u=0828b742cb111f8be1236a227fabdc1def3abd35&v=4'),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Aqib Javed',
                  style: TextStyle(
                      color: kProfileSubTextColor,
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 55.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.w),
              child: Container(
                width: 325.w,
                height: 169.h,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'aqibjaved000@gmail.com',
                            style: TextStyle(
                                color: kProfilehintsTextColor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      height: 29.h,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Connected Device Name',
                            style: TextStyle(
                                color: kProfilehintsTextColor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      height: 29.h,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Device ID',
                            style: TextStyle(
                                color: kProfilehintsTextColor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 181.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: 31.h, left: 141.w, right: 141.w, top: 0.h),
              child: SvgPicture.asset(kProfileButton),
            ),
          ],
        ),
      ),
    );
  }
}






// 


