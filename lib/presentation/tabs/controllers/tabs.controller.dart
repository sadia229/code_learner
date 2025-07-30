import 'package:get/get.dart';

class TabsController extends GetxController {

  final tabIndex = 0.obs;

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


  void changeTab(int value) {
    tabIndex.value = value;
    update();
  }
}
