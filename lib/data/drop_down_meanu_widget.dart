import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_application_project/utils/const.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String dropdownValue = '1';
  var items = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      // width: 45.w,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.black26,
            size: 6,
          ),
          elevation: 16,
          style: const TextStyle(color: Colors.grey),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                ),
                child: Text(
                  value,
                  style: TextStyle(color: Colors.black26),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class DropdownTwo extends StatefulWidget {
  const DropdownTwo({Key? key}) : super(key: key);

  @override
  State<DropdownTwo> createState() => _DropdownTwoState();
}

class _DropdownTwoState extends State<DropdownTwo> {
  String dropdownValue = '31';
  var items = [
    '31',
    '30',
    '29',
    '28',
    '27',
    '26',
    '25',
    '24',
    '23',
    '22',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 40.w,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.black26,
            size: 10,
          ),
          elevation: 16,
          style: const TextStyle(color: Colors.grey),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                ),
                child: Text(
                  value,
                  style: TextStyle(color: Colors.black26),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
