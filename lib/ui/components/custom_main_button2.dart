import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newslatter/core/constants/const_colors.dart';

class CustomMainButtonTwo extends StatelessWidget {
  final String title;
  double height;
  double width;
  double fontsize;
  final VoidCallback onpressed;
  var padding;

  CustomMainButtonTwo({super.key, required this.title, required this.width, required this.height, required this.fontsize  ,required this.onpressed, this.padding});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: ConstColor.wordsColor2.value,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ConstColor.borderColor.value, width: 2.w,)
        ),
        child: Center(
            child: Text(title, style: GoogleFonts.kalam(fontSize: fontsize, color: Colors.white,),
            )),
      ),
    );
  }
}
