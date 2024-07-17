import 'package:assessment/Screens/Homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(411.42857142857144, 843.4285714285714),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,

              textTheme: GoogleFonts.montserratTextTheme(
                Theme
                    .of(context)
                    .textTheme,
              ),
              primaryTextTheme: GoogleFonts.montserratTextTheme(
                Theme
                    .of(context)
                    .primaryTextTheme,
              ),),
            home: HomeScreen(),
          );
        }
    );
  }
}

