import 'package:get/get.dart';

import '../../../../presentation/tabs/controllers/tabs.controller.dart';

class TabsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsController>(
      () => TabsController(),
    );
  }
}
