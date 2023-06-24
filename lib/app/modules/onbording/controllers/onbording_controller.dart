import 'package:get/get.dart';

class OnbordingController extends GetxController {
  //TODO: Implement OnbordingController
  RxBool visible = true.obs;
  RxDouble dx = 0.0.obs,dy=0.0.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
