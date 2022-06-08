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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 48.w),
                child: SvgPicture.asset(
                  klogoUnionloginUpSvg,
                  width: 317.24.w,
                  height: 230.39.h,
                ),
              ),
              SizedBox(
                height: 37.h,
              ),
              Center(
                child: Image.asset(
                  'assets/Logo.png',
                  width: 206.36.w,
                  height: 148.h,
                ),
              ),
              SizedBox(
                height: 37.h,
              ),
              Text(
                'Welcome!',
                style: TextStyle(fontSize: 48.sp, fontWeight: FontWeight.w400),
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
              InkWell(
                onTap: () {
                  Get.to(() => DeviceStepScreen());
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 29.w),
                  child: SvgPicture.asset(
                    kgooglebuttonloginSvg,
                    width: 356.w,
                    height: 63.h,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => DeviceStepScreen());
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 29.w),
                  child: SvgPicture.asset(
                    kgooglebuttonloginSvg,
                    width: 356.w,
                    height: 63.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.w),
                child: SvgPicture.asset(
                  klogoUnionDownSvg,
                  width: 317.24.w,
                  height: 268.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
