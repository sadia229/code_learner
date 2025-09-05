import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../infrastructure/navigation/routes.dart';

class LoginController extends GetxController {
  final supabase = Supabase.instance.client;
  final visibility = false.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> login() async {
    try {
      // Step 1: Create account with email + password
      final response = await supabase.auth.signInWithPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      if (response.user != null) {
        ScaffoldMessenger.of(Get.context!).showSnackBar(
          const SnackBar(
              content: Text('✅ Login successful! Please verify your email.')),
        );
        final session = Supabase.instance.client.auth.currentSession;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('token', session?.accessToken ?? '');
        Get.offAllNamed(Routes.TABS);
      }
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
