import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewAllWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Text("View all",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),),
    );
  }
}
