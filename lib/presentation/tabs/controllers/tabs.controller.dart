import 'package:get/get.dart';

class TabsController extends GetxController {
  final tabIndex = 0.obs;

  void changeTab(int value) {
    tabIndex.value = value;
    update();
  }
}
