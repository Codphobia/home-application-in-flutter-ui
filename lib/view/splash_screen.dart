import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:home_application_project/data/imagepath.dart';
import 'package:home_application_project/utils/const.dart';
import 'package:home_application_project/view/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // ok? picture nahi ayea?
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 29.w),
            child: Column(children: [
              Align(alignment: Alignment.center, child: const Placeholder()),
              SizedBox(
                height: 65.h,
              ),
              CircleAvatar(
                child: Placeholder(),
              ),
              SizedBox(
                height: 65.h,
              ),
              Align(alignment: Alignment.center, child: const Placeholder()),
            ]),
          ),
        ),
      ),
    );
  }
}
