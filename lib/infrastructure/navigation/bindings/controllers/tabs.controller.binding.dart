import 'package:get/get.dart';

import 'package:code_editor/presentation/tabs/controllers/tabs.controller.dart';

class TabsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsController>(
      () => TabsController(),
    );
  }
}
