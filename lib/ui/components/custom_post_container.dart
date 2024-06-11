
import 'package:flutter/material.dart';
import 'package:newslatter/core/constants/const_colors.dart';
import 'package:newslatter/core/constants/const_styles.dart';
import 'package:sizer/sizer.dart';

class PostContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String des;
  final VoidCallback onTap;
  const PostContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.des,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 168.h,
        width: 395.w,
        decoration: BoxDecoration(
          color: ConstColor.wordsColor2.value,
          borderRadius: BorderRadius.circular(25),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: normalText.copyWith(
                      fontSize: 25.sp, color: ConstColor.kWhite.value),
                ),
                Text(
                  subtitle,
                  style: normalText.copyWith(
                      color: ConstColor.kWhite.value,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  des,
                  style: normalText.copyWith(
                      fontSize: 15, color: ConstColor.kWhite.value),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
