import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newslatter/core/constants/const_colors.dart';
import 'package:newslatter/core/constants/const_texts.dart';
import 'package:newslatter/ui/components/custom_main_button.dart';
import '../../controller/animated_bottomsheet_controller.dart';
import '../../core/constants/const_rich_text.dart';
import 'custom_main_container.dart';

class BottomSheetWidget extends StatelessWidget {
  final BottomSheetController controller = Get.put(BottomSheetController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {

      return AnimatedContainer(
        duration:   Duration(milliseconds: 700),
        curve: Curves.easeInOut,
        height: controller.isBottomSheetVisible.value ? Get.size.height * 0.83 : 0,
        decoration:  BoxDecoration(
          color: ConstColor.containerBackgroundColor.value,
                    borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: controller.isBottomSheetVisible.value
            ? Column(
              children: [
                Align(
                    alignment:Alignment.centerLeft,
                    child: IconButton(onPressed: ()=> Get.back(), icon: const Icon(Icons.arrow_back_ios))
                ),
                SingleChildScrollView(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Container(
                          padding: EdgeInsets.all(30),
                          child: Text(splash1, style: GoogleFonts.kalam(
                          fontSize: 43.sp,
                          color: ConstColor.textFieldColor.value,
                          fontWeight: FontWeight.bold,
                          )),
                        ),
                        const SizedBox(height: 60),
                        CustomMainButton(title: 'Sign Up',   style: GoogleFonts.kalam(), onpressed: () {  },),

                        const SizedBox(height: 60),
                        CustomMainButton(title: 'Login', style: GoogleFonts.kalam(), onpressed: () {  },),

                        const SizedBox(height: 40),
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

