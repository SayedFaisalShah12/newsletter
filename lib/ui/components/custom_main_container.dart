import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/animated_bottomsheet_controller.dart';
import '../../core/constants/const_colors.dart';

class CustomContainer extends StatelessWidget {
  final Widget widget;
  const CustomContainer({super.key, required this.widget});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: Get.width,
        decoration:  BoxDecoration(
          color: ConstColor.containerBackgroundColor.value,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: widget,
      ),
    );
  }
}