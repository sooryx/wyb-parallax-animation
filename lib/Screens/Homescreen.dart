import 'dart:math' as math;
import 'package:assessment/Screens/Page1.dart';
import 'package:assessment/Screens/Page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:assessment/constants/customcolors.dart';
import 'package:assessment/constants/images.dart';
import 'package:assessment/widgets/FamilyGroupWidget.dart';
import 'package:assessment/widgets/SalaryWidget.dart';
import 'package:assessment/widgets/ViewAllWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120.w,
        leading: Row(
          children: [
            Icon(
              Icons.arrow_back_ios_new_rounded,
              color: CustomColors.deepBlueUI,
            ),
            SizedBox(
              width: 5.w,
            ),
            Expanded(
              child: Text(
                'Account',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    color: CustomColors.deepBlueUI,
                    fontSize: 18.sp),
              ),
            ),
          ],
        ),
        title: Text(
          'Transfer',
          style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16.dg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Who do you want to transfer money to?',
                  style: TextStyle(
                      fontSize: 24.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10.h),
                Container(
                  padding: EdgeInsets.all(10.dg),
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: CustomColors.lightBlack,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5.w,),
                      Text(
                        'New',
                        style: TextStyle(fontSize: 14.sp, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: 2, // Replace with your actual page count
                    itemBuilder: (context, index) {
                      double pageOffset = _currentPage - index;
                      double gauss = math.exp(-(math.pow((pageOffset.abs() -
                          0.5), 2) / 0.099));

                      return AnimatedBuilder(
                        animation: _pageController,
                        builder: (context, child) {
                          // Apply parallax effect to each item inside pages
                          return index == 0 ? Page1(
                              pageOffset: pageOffset, gauss: gauss) : Page2(
                              pageOffset: pageOffset, gauss: gauss);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -40,
            left: -40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SalaryWidget(),
                SizedBox(
                  width: 60.w,
                ),
                ViewAllWidget(),
              ],
            ),
          )

        ],
      ),
    );
  }

}
