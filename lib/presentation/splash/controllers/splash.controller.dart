import 'package:code_editor/infrastructure/navigation/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SplashController extends GetxController {
  final count = 0.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    await loadOnBoarding();
  }

  Future<void> loadOnBoarding() async {
    final session = Supabase.instance.client.auth.currentSession;
    final token = session?.accessToken;
    if (token != null) {
      await Future.delayed(const Duration(milliseconds: 3000));
      Get.offAllNamed(Routes.TABS);
    }else{
      await Future.delayed(const Duration(milliseconds: 3000));
      Get.offAllNamed(Routes.LOGIN);
    }
  }
}
