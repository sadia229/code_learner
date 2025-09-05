import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class ExampleOneController extends GetxController {
 static const platform = MethodChannel('samples.flutter.dev/print');
 final nativeText = ''.obs;

  Future<void> printText() async {
    try {
      final String result = await platform.invokeMethod('printText');
      debugPrint("From Native: $result");
      nativeText.value = result;
    } on PlatformException catch (e) {
      debugPrint("Failed to print text: ${e.message}");
    }
  }
}
