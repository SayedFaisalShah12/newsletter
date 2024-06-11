import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/circular_progress_controller.dart';// Import your controller

class CustomCircularProgressIndicator extends StatelessWidget {
  final ProgressController progressController = Get.find<ProgressController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return progressController.isLoading.value
          ? const CircularProgressIndicator()
          : Container();
    });
  }
}
