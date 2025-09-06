import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../infrastructure/theme/assets/app.assets.dart';
import 'controllers/comming_soon.controller.dart';

class CommingSoonScreen extends GetView<CommingSoonController> {
  const CommingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: () => Get.back(),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 24,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.light.icons.commingSoonIcon,
              height: 200,
              opacity: const AlwaysStoppedAnimation(0.5),
            ),
            const SizedBox(height: 20),
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Colors.blue, Colors.green], // Define your gradient colors
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds),
              child: const Text(
                "Comming Soon",
                style: TextStyle(
                  // The color must be white for the gradient to show correctly
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
