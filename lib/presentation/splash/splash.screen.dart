import 'package:code_editor/infrastructure/theme/app.colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/splash.controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Obx(() {
          controller.count.value;
          return Image.asset(
            'assets/gif/binary-code.gif',
            height: 200,
            //color: Colors.white,
          );
        }),
      ),
    );
  }
}
