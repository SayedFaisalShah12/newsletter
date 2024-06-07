import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/animated_bottomsheet_controller.dart';
import '../../core/constants/const_colors.dart';
import '../../core/constants/const_texts.dart';
import 'custom_main_button.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.controller,
  });

  final BottomSheetController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration:   Duration(milliseconds: 700),
      curve: Curves.easeInOut,
      height: controller.isBottomSheetVisible.value ? Get.size.height * 0.83 : 0,
      decoration:  BoxDecoration(
        color: ConstColor.containerBackgroundColor.value,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      )
    );
  }
}