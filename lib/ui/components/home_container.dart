import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/const_colors.dart';
import '../../core/constants/const_styles.dart';
class HomeContainer extends StatelessWidget {
  String title;
    HomeContainer({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width:double.infinity,
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color:ConstColor.bgColor.value,
          border: Border.all(color:ConstColor.borderColor.value,width: 2.w)
      ),
      child: Text(title ),
    );
  }
}
