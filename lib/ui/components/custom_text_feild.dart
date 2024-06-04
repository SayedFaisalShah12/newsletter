
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFeild extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  const CustomTextFeild({
    required this.hint,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: GoogleFonts.plusJakartaSans(
          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: GoogleFonts.plusJakartaSans(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
      cursorColor: Colors.white,
    );
  }
}
