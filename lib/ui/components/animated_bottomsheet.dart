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
       return CustomContainer(controller: controller);
    });
  }
}



