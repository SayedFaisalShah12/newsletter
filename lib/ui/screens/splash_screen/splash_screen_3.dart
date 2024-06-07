import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newslatter/controller/animated_bottomsheet_controller.dart';
import 'package:newslatter/ui/components/animated_bottomsheet.dart';
import '../../../core/constants/const_colors.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  final bottomSheetController = Get.put(BottomSheetController());
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bottomSheetController.showBottomSheet(context);
    });
    return  Scaffold(
      body: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [ConstColor.firstColor.value, ConstColor.SecondColor.value, ConstColor.thirdColor.value,],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.15,
                  width: Get.width * 0.28,
                  child: Image.asset('assets/image/logo.png'),
                ),
              ],
            ),
          ),
      ),
      bottomSheet: BottomSheetWidget(),
    );
  }
}
