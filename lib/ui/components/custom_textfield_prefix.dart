import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/constants/const_colors.dart';

class CustomTextFeildprefix extends StatelessWidget {
  final IconData icon;
  final TextEditingController? EmailController;

  const CustomTextFeildprefix({
    required this.icon,
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
            prefixIcon: Icon(icon,color: ConstColor.kWhite.value,),
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
