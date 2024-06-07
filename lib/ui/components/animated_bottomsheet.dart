import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newslatter/core/constants/const_texts.dart';
import 'package:newslatter/ui/components/custom_main_button.dart';
import '../../controller/animated_bottomsheet_controller.dart';
import '../../core/constants/const_rich_text.dart';

class BottomSheetWidget extends StatelessWidget {
  final BottomSheetController controller = Get.put(BottomSheetController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
        height: controller.isBottomSheetVisible.value ? Get.size.height * 0.83 : 0,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(250, 250, 210, 0.9),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: controller.isBottomSheetVisible.value
            ? Stack(
              children: [
                IconButton(onPressed: ()=> Get.back(), icon: const Icon(Icons.arrow_back_ios)),
                SingleChildScrollView(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        const SizedBox(height: 40),
                        Container(
                          padding: EdgeInsets.all(30),
                          child: Text(splash1, style: GoogleFonts.kalam(
                          fontSize: 43.sp,
                          color: Colors.pinkAccent,
                          fontWeight: FontWeight.bold,
                          )),
                        ),
                        const SizedBox(height: 60),
                        CustomMainButton(title: 'Sign Up', style: GoogleFonts.kalam()),
                  
                        const SizedBox(height: 60),
                        CustomMainButton(title: 'Login', style: GoogleFonts.kalam()),
                  
                        const SizedBox(height: 60),
                        const RichTextTwo()
                    ],
                  ),
                ),
              ],
            )
            : const SizedBox(),
      );
    });
  }
}

