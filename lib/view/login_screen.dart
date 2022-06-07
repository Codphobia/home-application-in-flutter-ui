import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:home_application_project/data/imagepath.dart';
import 'package:home_application_project/utils/const.dart';
import 'package:home_application_project/view/device_step_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 48.w),
                  child: Placeholder(),
                ),
                SizedBox(
                  height: 37.h,
                ),
                CircleAvatar(
                  child: Placeholder(),
                ),
                SizedBox(
                  height: 37.h,
                ),
                Text(
                  'Welcome!',
                  style:
                      TextStyle(fontSize: 48.sp, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Text(
                  'Sign in to your Account',
                  style: TextStyle(
                      color: kLogoSubTextColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 36.h,
                ),
                // SvgPicture.asset(
                //   kGoogleButtonSvg,
                //   width: 356.w,
                //   height: 63.h,
                // ),
                InkWell(
                  onTap: () {
                    Get.to(() => DeviceStepScreen());
                  },
                  child: Container(
                      color: Colors.grey,
                      width: 356.w,
                      height: 63.h,
                      child: Center(child: const Text('google button 1'))),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                    color: Colors.grey,
                    width: 356.w,
                    height: 63.h,
                    child: Center(child: const Text('google button 2'))),
                SizedBox(
                  height: 37.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 48.w),
                  child: Placeholder(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
