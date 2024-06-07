import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/constants/const_colors.dart';

class CustomTextFeild extends StatelessWidget {
  final String hint;
  final TextEditingController? EmailController;

  const CustomTextFeild({
    required this.hint,
    this.EmailController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 226,
      height: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ConstColor.textFieldColor.value,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        controller: EmailController,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: GoogleFonts.kalam(
              fontSize: 30,
              color: Colors.black,
          ),
        )
      ),
    );
  }
}
