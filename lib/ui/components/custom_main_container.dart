import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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