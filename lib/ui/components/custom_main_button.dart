
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMainButton extends StatelessWidget {
  final String title;
  final style;
   CustomMainButton({super.key, required this.title, required this.style,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      width: 180.w,
      decoration: BoxDecoration(
        color: Color.fromRGBO(240, 128, 128, 0.9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
          child: Text(title, style: GoogleFonts.kalam(
            fontSize: 30,
            color: Colors.white,
          ),)),
    );
  }
}
