import 'package:get/get.dart';

import '../../../../presentation/example_one/controllers/example_one.controller.dart';

class ExampleOneControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExampleOneController>(
      () => ExampleOneController(),
    );
  }
}
