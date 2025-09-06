import 'package:code_editor/infrastructure/data/model/interview_questions/interview_questions_model.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class InterviewPreparationController extends GetxController {
  final scrollController = ScrollController();
  var isBottom = false.obs;

  late ConfettiController confettiController;
  var questions = <InterviewQuestion>[].obs;
  var isLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    await fetchQuestions();
    scrollController.addListener(_scrollListener);
    confettiController =
        ConfettiController(duration: const Duration(seconds: 2));
  }

  void _scrollListener() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 50) {
      isBottom.value = true;
    } else {
      isBottom.value = false;
    }
  }

  Future<void> callApi() async {
    await Future.delayed(const Duration(microseconds: 1000)); // fake API
    confettiController.play(); // 🎉 play confetti
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    // await fetchQuestions();
  }

  @override
  void onClose() {
    scrollController.dispose();
    confettiController.dispose();
    super.onClose();
  }

  Future<void> fetchQuestions() async {
    try {
      isLoading.value = true;

      final response =
          await Supabase.instance.client.from('interview_questions').select();

      if (response != null) {
        final list = (response as List)
            .map((q) => InterviewQuestion.fromJson(q))
            .toList();
        questions.assignAll(list);
      }
    } catch (e) {
      print("Error fetching questions: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
