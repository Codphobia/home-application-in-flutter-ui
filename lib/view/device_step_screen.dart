import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_application_project/utils/const.dart';
import 'package:home_application_project/view/Home_Screen.dart';
import 'package:home_application_project/view/navigationbar_screen.dart';

class DeviceStepScreen extends StatefulWidget {
  DeviceStepScreen({Key? key}) : super(key: key);

  @override
  State<DeviceStepScreen> createState() => _DeviceStepScreenState();
}

class _DeviceStepScreenState extends State<DeviceStepScreen> {
  bool _obscureText = true;

  Widget getTextField(String hintText) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 9.h),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.r),
            borderSide:
                const BorderSide(color: kTextFieldInsideColor, width: 0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.r),
            borderSide:
                const BorderSide(color: kTextFieldInsideColor, width: 0),
          ),
          contentPadding: EdgeInsets.only(
            left: 18.sp,
            top: 16.sp,
            bottom: 16.sp,
          ),
          filled: true,
          hintText: hintText,
          helperStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 48.w),
              child: const Placeholder(),
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              'Device Setup',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36.sp),
            ),
            SizedBox(
              height: 19.h,
            ),
            Text(
              'Connect to the Device',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
            ),
            SizedBox(
              height: 19.h,
            ),
            textFieldTitle('Device Name'),
            SizedBox(
              height: 9.h,
            ),
            getTextField('e.g Device_01'),
            SizedBox(
              height: 27.h,
            ),
            textFieldTitle('Device ID'),
            SizedBox(
              height: 9.h,
            ),
            getTextField('e.g 42401823'),
            SizedBox(
              height: 27.h,
            ),
            textFieldTitle('Password'),
            SizedBox(
              height: 9.h,
            ),
            passwordTextField(),
            SizedBox(
              height: 62.h,
            ),
            InkWell(
              onTap: () {
                Get.to(() => NavigationBarScreen());
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 140.w,
                ),
                child: Container(
                  color: kConnetButtonColor,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 27.w, vertical: 12.h),
                    child: Text(
                      'Connect',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18.sp),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 105.h,
            ),
            Text(
              'Forgot Password?',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: kForgetTextColor),
            ),
            SizedBox(
              height: 46.h,
            ),
          ]),
        ),
      ),
    );
  }

  Widget textFieldTitle(String title) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
            )));
  }

  Widget passwordTextField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 9.h),
      child: TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.r),
            borderSide:
                const BorderSide(color: kTextFieldInsideColor, width: 0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.r),
            borderSide:
                const BorderSide(color: kTextFieldInsideColor, width: 0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 16.h),
          filled: true,
          hintText: '************',
          helperStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(
                () {
                  _obscureText = !_obscureText;
                },
              );
            },
            icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility,
                color: Colors.black),
          ),
        ),
      ),
    );
  }
}
