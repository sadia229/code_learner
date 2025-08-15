import 'package:code_editor/infrastructure/theme/assets/app.assets.dart';
import 'package:code_editor/presentation/home/components/user_component.dart';
import 'package:code_editor/presentation/shared/header/app_header.dart';
import 'package:code_editor/presentation/shared/space/sliver_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/daily_learning_streak.dart';
import 'components/features_components.dart';
import 'components/practice_question_accuracy.dart';
import 'components/skill_progress_by_topic.dart';
import 'components/user_level_point_coins_card.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverSizedBox(height: Get.height * 0.08),
          UserComponent(),
          SliverSizedBox(height: Get.height * 0.025),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                children: [
                  UserLevelPointCoinsCard(
                    image: AppAssets.light.icons.levelBadge,
                    title: "Level",
                    subtitle: "Starter",
                  ),
                  const Spacer(),
                  UserLevelPointCoinsCard(
                    image: AppAssets.light.icons.scoreBadge,
                    title: "Score",
                    subtitle: "50",
                  ),
                  const Spacer(),
                  UserLevelPointCoinsCard(
                    image: AppAssets.light.icons.coinBadge,
                    title: "Coins",
                    subtitle: "200",
                    height: 32,
                  ),
                ],
              ),
            ),
          ),
          SliverSizedBox(height: 16),
          FeaturesComponent(),
          SliverSizedBox(height: Get.height * 0.04),
          AppHeader(text: "Activity"),
          //SliverToBoxAdapter(child: ContestCard(),)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DailyLearningStreak(),
                  SizedBox(width: 12),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //SkillProgressByTopic(),
                        //const SizedBox(height: 12),
                        PracticeQuestionAccuracy(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
