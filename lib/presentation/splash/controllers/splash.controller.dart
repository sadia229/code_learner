import 'package:code_editor/infrastructure/navigation/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final count = 0.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    await loadOnBoarding();
  }

  Future<void> loadOnBoarding() async {
    await Future.delayed(Duration(milliseconds: 5000));
    print("Executed after 300ms");
    Get.toNamed(Routes.TABS);
  }
}
