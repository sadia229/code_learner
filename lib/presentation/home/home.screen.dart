import 'package:code_editor/infrastructure/theme/assets/app.assets.dart';
import 'package:code_editor/presentation/home/components/features_card.dart';
import 'package:code_editor/presentation/home/components/user_component.dart';
import 'package:code_editor/presentation/shared/space/sliver_sized_box.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      FeaturesCard(
                        title: "Explore Now",
                        gradient: LinearGradient(
                          colors: [Colors.deepPurple.shade300, Colors.deepPurple.shade500],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        splashColor: Colors.white,
                        textColor: Colors.white,
                        onTap: () {},
                      ),
                      const Spacer(),
                      FeaturesCard(
                        title: "Explore Now",
                        gradient: LinearGradient(
                          colors: [Colors.deepPurple.shade300, Colors.deepPurple.shade500],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        splashColor: Colors.white,
                        textColor: Colors.white,
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      FeaturesCard(
                        title: "Explore Now",
                        gradient: LinearGradient(
                          colors: [Colors.deepPurple.shade300, Colors.deepPurple.shade500],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        splashColor: Colors.white,
                        textColor: Colors.white,
                        onTap: () {},
                      ),
                      const Spacer(),
                      FeaturesCard(
                        title: "Explore Now",
                        gradient: LinearGradient(
                          colors: [Colors.deepPurple.shade300, Colors.deepPurple.shade500],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        splashColor: Colors.white,
                        textColor: Colors.white,
                        onTap: () {},
                      ),
                    ],
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Flexible(
                  //       child: FeaturesCard(
                  //         title: 'Interview Preparations',
                  //         color: Colors.blue.shade50,
                  //         textColor: Colors.blue.shade900,
                  //         onTap: () {},
                  //         highlightColor: Colors.blue.shade100,
                  //       ),
                  //     ),
                  //     SizedBox(width: 12),
                  //     Flexible(
                  //       child: FeaturesCard(
                  //         title: 'Daily Quiz',
                  //         color: Colors.green.shade50,
                  //         textColor: Colors.green.shade900,
                  //         onTap: () {},
                  //         highlightColor: Colors.green.shade100,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(height: 12),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Flexible(
                  //       child: FeaturesCard(
                  //         title: 'CV Screening',
                  //         color: Colors.green.shade50,
                  //         textColor: Colors.green.shade900,
                  //         onTap: () {},
                  //         highlightColor: Colors.green.shade100,
                  //       ),
                  //     ),
                  //     SizedBox(width: 12),
                  //     Flexible(
                  //       child: FeaturesCard(
                  //         title: 'Mock Interviews',
                  //         color: Colors.blue.shade50,
                  //         textColor: Colors.blue.shade900,
                  //         onTap: () {},
                  //         highlightColor: Colors.blue.shade100,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
