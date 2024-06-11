import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newslatter/core/constants/const_colors.dart';

class CustomMainButton extends StatelessWidget {
  final String title;
  final style;
  final VoidCallback onpressed;
   CustomMainButton({super.key, required this.title,  this.style, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        padding: EdgeInsets.only(right: 16.w,left: 16.w,top: 16.h,bottom: 16.h),

        height: 75.h,
        decoration: BoxDecoration(
          color: ConstColor.wordsColor2.value,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(title, style: GoogleFonts.kalam(fontSize: 30, color: Colors.white,)),
      ),
    );
  }
}
