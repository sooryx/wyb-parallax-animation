import 'package:assessment/constants/customcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewAllWidget extends StatelessWidget {
  const ViewAllWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100.w,
      height: 100.h,
      decoration: BoxDecoration(
        color: CustomColors.solidLightGrey,
        borderRadius: BorderRadius.circular(45.r),
      ),
      child: const Text("View all",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),),
    );
  }
}
