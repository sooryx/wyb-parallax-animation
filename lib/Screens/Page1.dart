import 'dart:core';

import 'package:assessment/Constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/FamilyGroupWidget.dart';

class Page1 extends StatelessWidget {
  final double pageOffset;
  final double gauss;
  const Page1({super.key, required this.pageOffset, required this.gauss});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60.h),
              child: Transform.translate(
                offset: Offset(-120 * gauss * pageOffset.sign, 0),
                child: Image.asset(
                  ImagePaths.person14,
                  height: 100.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Transform.translate(
                offset: Offset(-50 * gauss * pageOffset.sign, 0),
                child: Image.asset(
                  ImagePaths.person2,
                  height: 50.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const FamilyGroupWidget(),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80.h),
              child: Transform.translate(
                offset: Offset(-50 * gauss * pageOffset.sign, 0),
                child: Image.asset(
                  ImagePaths.person4,
                  height: 80.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Transform.translate(
                offset: Offset(-120 * gauss * pageOffset.sign, 0),
                child: Image.asset(
                  ImagePaths.person5,
                  height: 120.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 80.h),
              child: Transform.translate(
                offset: Offset(-80 * gauss * pageOffset.sign, 0),
                child: Image.asset(
                  ImagePaths.person3,
                  height: 70.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
