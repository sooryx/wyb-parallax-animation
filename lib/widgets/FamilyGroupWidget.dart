import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FamilyGroupWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 246, 117, 86),
            borderRadius: BorderRadius.circular(45),
          ),
        ),
        Positioned(
          top: 10,
          right: 0,
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 246, 117, 86),
                borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 3,
                color: Colors.white              )
            ),
            child: Center(
              child: Text(
                '4',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 12,
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
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Group',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
