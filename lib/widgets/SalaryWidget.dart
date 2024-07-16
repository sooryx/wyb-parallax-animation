import 'package:assessment/constants/customcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SalaryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30,left: 40,right: 10),
      width: 220,
      height: 220,
      decoration: BoxDecoration(
        color: CustomColors.deepBlueUI,
       shape: BoxShape.circle
      ),
      child: Column(
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
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20,),
          Text(
            'Drag to the person you want to transfer money',
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 10,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
