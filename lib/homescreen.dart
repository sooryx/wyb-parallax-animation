import 'dart:math' as math;
import 'package:flutter/material.dart';
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
        leadingWidth: 120,
        leading: Row(
          children: [
            Icon(
              Icons.arrow_back_ios_new_rounded,
              color: CustomColors.deepBlueUI,
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Text(
                'Account',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    color: CustomColors.deepBlueUI,
                    fontSize: 18),
              ),
            ),
          ],
        ),
        title: Text(
          'Transfer',
          style: GoogleFonts.montserrat(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Who do you want to transfer money to?',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        'New',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: 2, // Replace with your actual page count
                    itemBuilder: (context, index) {
                      double pageOffset = _currentPage - index;
                      double gauss = math.exp(-(math.pow((pageOffset.abs() - 0.5), 2) / 0.099));

                      return AnimatedBuilder(
                        animation: _pageController,
                        builder: (context, child) {
                          return Transform.translate(
                            offset: Offset(-40 * gauss * pageOffset.sign, 0),
                            child: index == 0 ? page1() : page2(),
                          );
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
                const SizedBox(
                  width: 60,
                ),
                ViewAllWidget(),
              ],
            ),
          )

        ],
      ),
    );
  }

  Widget page1() {

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Image.asset(
                ImagePaths.person1,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Image.asset(
                ImagePaths.person2,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            FamilyGroupWidget(),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Image.asset(
                ImagePaths.person4,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Image.asset(
                ImagePaths.person5,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Image.asset(
                ImagePaths.person3,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget page2() {

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Image.asset(
                ImagePaths.person7,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Image.asset(
                ImagePaths.person2,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.asset(
                ImagePaths.person6,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.asset(
                ImagePaths.person4,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Image.asset(
                ImagePaths.person5,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.asset(
                ImagePaths.person3,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

