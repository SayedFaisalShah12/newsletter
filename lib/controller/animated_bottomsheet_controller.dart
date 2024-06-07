import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class BottomSheetController extends GetxController {
  var isBottomSheetVisible = false.obs;

  void showBottomSheet(BuildContext context) {
    isBottomSheetVisible.value = true;
  }

  void hideBottomSheet() {
    isBottomSheetVisible.value = false;
  }
}
