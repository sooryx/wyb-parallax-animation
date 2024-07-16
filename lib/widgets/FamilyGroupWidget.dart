import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/customcolors.dart';

class FamilyGroupWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
            color: CustomColors.deepOrange,
            borderRadius: BorderRadius.circular(45),
          ),
        ),
        Positioned(
          top: 10.h,
          right: 0,
          child: Container(
            width: 24.w,
            height: 24.h,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 246, 117, 86),
                borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                width: 3,
                color: Colors.white              )
            ),
            child: Center(
              child: Text(
                '4',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Family',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Group',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
