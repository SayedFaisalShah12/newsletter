// lib/controllers/signup_controller.dart
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newslatter/core/constants/const_colors.dart';

class SignUpController extends GetxController {
  var isLoading = false.obs;

  void signUp() async {
    isLoading.value = true;
    // Simulate a network request or some other async operation
    await Future.delayed(Duration(seconds: 1));
    isLoading.value = false;
    // Show success message
    Get.defaultDialog(
      backgroundColor: ConstColor.containerBackgroundColor.value,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 199.h,
              width: 207.h,
              child: Image.asset("assets/image/congrats.png")
          ),
          Text( "Congrats", style: GoogleFonts.kalam( fontSize: 40.h,)),
          Text("Your account is ready to use. You will be redirect to the home in few seconds", style: GoogleFonts.kalam(fontSize:  16.h)),
          SizedBox(height: 37,),
          CircularProgressIndicator(),
        ],
      ),
      onConfirm: () {
        Get.back(); // Close the dialog
      },
      barrierDismissible: false,
    );
  }
}
