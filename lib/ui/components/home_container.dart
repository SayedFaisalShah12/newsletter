import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/const_colors.dart';
import '../../core/constants/const_styles.dart';
class HomeContainer extends StatelessWidget {
  String title;
    HomeContainer({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 95.h,
      width:375.w,
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color:ConstColor.bgColor.value,
          border: Border.all(color:ConstColor.borderColor.value,width: 2.w)
      ),
      child: Text(title ,style: homeScreenTitle,),
    );
  }
}
