import 'package:get/get.dart';

import '../../../../presentation/comming_soon/controllers/comming_soon.controller.dart';

class CommingSoonControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CommingSoonController>(
      () => CommingSoonController(),
    );
  }
}
