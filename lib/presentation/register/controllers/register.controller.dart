import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../infrastructure/navigation/routes.dart';

class RegisterController extends GetxController {
  final supabase = Supabase.instance.client;
  final visibility = false.obs;

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> register() async {
    try {
      // Step 1: Create account with email + password
      final response = await supabase.auth.signUp(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        data: {
          'name': nameController.text.trim(),
          'phone': phoneController.text.trim(),
        },
      );

      if (response.user != null) {
        ScaffoldMessenger.of(Get.context!).showSnackBar(
          const SnackBar(
              content:
                  Text('✅ Registration successful! Please verify your email.')),
        );
      }
      Get.offAllNamed(Routes.LOGIN);
    } on AuthException catch (e) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(content: Text('❌ ${e.message}')),
      );
    } catch (e) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(content: Text('⚠️ Unexpected error: $e')),
      );
    }
  }

  void toggleVisibility() {
    visibility.value = !visibility.value;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
