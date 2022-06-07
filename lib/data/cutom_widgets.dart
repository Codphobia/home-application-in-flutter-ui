import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_application_project/utils/const.dart';

// ignore: must_be_immutable
class MyWidget extends StatefulWidget {
  String titleForRowOne, titleForRowTwo;
  bool isSwitchedOne, isSwitchedTwo;
  bool checkForOne, checkForTwo;
  MyWidget(
      {Key? key,
      required this.titleForRowOne,
      required this.titleForRowTwo,
      required this.isSwitchedOne,
      required this.isSwitchedTwo,
      required this.checkForOne,
      required this.checkForTwo})
      : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
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
                  CircleAvatar(
                    child: Placeholder(),
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.w),
                    child: Text(
                      widget.titleForRowOne,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: kCelsiusTextColor),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Switch(
                          value: widget.isSwitchedOne,
                          onChanged: (value) {
                            setState(() {
                              widget.isSwitchedOne = value;
                              print(widget.isSwitchedOne);
                              widget.checkForOne = widget.isSwitchedOne;
                            });
                          },
                          activeTrackColor: Colors.grey,
                          activeColor: ktogelIconColor,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            widget.checkForOne ? "ON" : "OFF",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: kCelsiusColor),
                          ),
                        ),
                      ],
                    ),
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
                  CircleAvatar(
                    child: Placeholder(),
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.w),
                    child: Text(
                      widget.titleForRowTwo,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: kCelsiusTextColor),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Switch(
                          value: widget.isSwitchedTwo,
                          onChanged: (value) {
                            setState(() {
                              widget.isSwitchedTwo = value;
                              print(widget.isSwitchedTwo);
                              widget.checkForTwo = widget.isSwitchedTwo;
                            });
                          },
                          activeTrackColor: Colors.grey,
                          activeColor: ktogelIconColor,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            widget.checkForTwo ? "ON" : "OFF",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: kCelsiusColor),
                          ),
                        ),
                      ],
                    ),
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
