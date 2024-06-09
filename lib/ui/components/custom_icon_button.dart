import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconButton extends StatelessWidget {
  Image image;
  CustomIconButton({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 87.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        width: 23.04.h,
        height: 24.h,
          child: image,
      ),
    );
  }
}
