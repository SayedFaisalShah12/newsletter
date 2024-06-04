
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMainButton extends StatelessWidget {
  final String title;
  const CustomMainButton({
    required this.title
    ,super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      width: 155.w,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
          child: Text(
            title,
            style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w600, fontSize: 20, color: Colors.white),
          )),
    );
  }
}
