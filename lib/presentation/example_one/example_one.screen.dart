import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/example_one.controller.dart';

class ExampleOneScreen extends GetView<ExampleOneController> {
  const ExampleOneScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Method Channel Example'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              controller.nativeText.value,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () => controller.printText(),
            child: const Text('Call Native Method'),
          )
        ],
      ),
    );
  }
}
