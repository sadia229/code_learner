import 'dart:math';

import 'package:code_editor/presentation/shared/space/sliver_sized_box.dart';
import 'package:code_editor/presentation/shared/text/gradient_text.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:code_editor/presentation/interview_preparation/controllers/interview_preparation.controller.dart';

class InterviewPreparationScreen
    extends GetView<InterviewPreparationController> {
  const InterviewPreparationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Main Scroll View
          CustomScrollView(
            controller: controller.scrollController,
            slivers: [
              SliverSizedBox(height: Get.height * 0.07),
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => Get.back(),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const GradientText(
                        text: "Interview Preparation", fontSize: 20),
                  ],
                ),
              ),
              Obx(() {
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (context, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Theme(
                          data: Theme.of(context)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            initiallyExpanded: true,
                            tilePadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            childrenPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            backgroundColor: Colors.blue.shade50,
                            // expanded background
                            collapsedBackgroundColor: Colors.transparent,
                            // collapsed background
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            collapsedShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            title: Row(
                              children: [
                                const Text(
                                  "📌",
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    controller.questions[index].question,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.questions[index].answer,
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                  const SizedBox(height: 8),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    childCount: controller.questions.length,
                  ),
                );
              }),
              SliverSizedBox(height: Get.height * 0.15),
            ],
          ),

          // 🎉 Confetti overlay
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity, // full screen width
              height: Get.height,
              child: ConfettiWidget(
                confettiController: controller.confettiController,
                blastDirection: -pi / 2,
                // Upward
                blastDirectionality: BlastDirectionality.explosive,
                emissionFrequency: 0.05,
                numberOfParticles: 20,
                maxBlastForce: 20,
                minBlastForce: 10,
                gravity: 0.3,
                colors: const [Colors.yellow, Colors.orange, Colors.brown],
                createParticlePath: (size) {
                  final path = Path();
                  path.addOval(Rect.fromCircle(center: Offset.zero, radius: 6));
                  return path;
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Obx(() {
        return controller.isBottom.value
            ? Container(
          margin: const EdgeInsets.all(12.0),
          width: double.infinity,
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: Colors.green.shade400,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            onPressed: controller.callApi,
            child: const Text(
              "🎉 Collect 10 coins",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        )
            : const SizedBox.shrink();
      }),
    );
  }
}
