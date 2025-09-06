import 'package:get/get.dart';

import '../../../../presentation/interview_preparation/controllers/interview_preparation.controller.dart';

class InterviewPreparationControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InterviewPreparationController>(
      () => InterviewPreparationController(),
    );
  }
}
