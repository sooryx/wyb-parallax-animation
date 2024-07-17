import 'package:assessment/constants/customcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SalaryWidget extends StatelessWidget {
  const SalaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30,left: 60,right: 10),
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        color: CustomColors.deepBlueUI,
       shape: BoxShape.circle
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start  ,
        children: [
          Text(
            'SALARY',
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '\$12,475',
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20,),
          Text(

            'Drag to the person you want to transfer money',

            style: GoogleFonts.montserrat(
              color: Colors.white54,
              fontSize: 12,
              fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
