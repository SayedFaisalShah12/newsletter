import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/constants/const_colors.dart';

class CustomTextFeild_prefix_suffix extends StatelessWidget {
  final IconData prefixIcon;
  final IconData suffixIcon;
  final TextEditingController? EmailController;

  const CustomTextFeild_prefix_suffix({
    required this.prefixIcon,
    required this.suffixIcon,
    this.EmailController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 302.w,
      height: 80.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ConstColor.textFieldColor.value,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
          controller: EmailController,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon,color: ConstColor.kWhite.value,),
            suffixIcon: Icon(suffixIcon,color: ConstColor.kWhite.value,),
            border: InputBorder.none,
            hintStyle: GoogleFonts.kalam(
              fontSize: 30,
              color: Colors.white,
            ),
          )
      ),
    );
  }
}
