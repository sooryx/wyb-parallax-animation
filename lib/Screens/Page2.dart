import 'package:assessment/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page2 extends StatelessWidget {
  final double pageOffset;
  final double gauss;
   Page2({super.key, required this.pageOffset, required this.gauss});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Transform.translate(
                offset: Offset(-80 * gauss * pageOffset.sign, 0),
                child: Image.asset(
                  ImagePaths.person7,
                  height: 120.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60.h),
              child: Transform.translate(
                offset: Offset(-120 * gauss * pageOffset.sign, 0),
                child: Image.asset(
                  ImagePaths.person8,
                  height: 110.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Transform.translate(
                offset: Offset(-60 * gauss * pageOffset.sign, 0),
                child: Image.asset(
                  ImagePaths.person6,
                  height: 90.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
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
              padding: EdgeInsets.only(top: 20.h),
              child: Transform.translate(
                offset: Offset(-30 * gauss * pageOffset.sign, 0),
                child: Image.asset(
                  ImagePaths.person10,
                  height: 70.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70.h),
              child: Transform.translate(
                offset: Offset(-120  * gauss * pageOffset.sign, 0),
                child: Image.asset(
                  ImagePaths.person12,
                  height: 120.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Transform.translate(
                offset: Offset(-50 * gauss * pageOffset.sign, 0),
                child: Image.asset(
                  ImagePaths.person9,
                  height: 90.h,
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
