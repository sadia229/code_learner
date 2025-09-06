import 'package:code_editor/presentation/home/controllers/home.controller.dart';
import 'package:code_editor/presentation/profile/controllers/profile.controller.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() {
    // Controllers
    Get.lazyPut<HomeController>(
      () => HomeController(),
      fenix: true,
    );

    Get.lazyPut<ProfileController>(
      () => ProfileController(),
      fenix: true,
    );
  }
}
