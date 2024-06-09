import 'package:get/get.dart';

class ProgressController extends GetxController {
  var isLoading = false.obs;

  void startLoading() {
    isLoading.value = true;
    // Simulate a network request or some other async operation
    Future.delayed(Duration(seconds: 3), () {
      isLoading.value = false;
    });
  }
}
