import 'package:code_editor/infrastructure/theme/assets/app.assets.dart';
import 'package:code_editor/presentation/home/components/features_card.dart';
import 'package:code_editor/presentation/home/components/user_component.dart';
import 'package:code_editor/presentation/shared/header/app_header.dart';
import 'package:code_editor/presentation/shared/space/sliver_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../infrastructure/theme/app.colors.dart';
import 'components/contest_card.dart';
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FeaturesCard(
                        title: "Interview Preparation",
                        gradient: LinearGradient(
                          colors: [
                            Colors.green.shade300,
                            Colors.green.shade500
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        onTap: () {},
                      ),
                      //const Spacer(),
                      SizedBox(width: 12),
                      FeaturesCard(
                        title: "CV Screening",
                        gradient: LinearGradient(
                          colors: [Colors.blue.shade300, Colors.blue.shade500],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FeaturesCard(
                        title: "Mock Interviews",
                        gradient: LinearGradient(
                          colors: [Colors.blue.shade300, Colors.blue.shade500],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        onTap: () {},
                      ),
                      SizedBox(width: 12),
                      FeaturesCard(
                        title: "Weekly Quiz",
                        gradient: LinearGradient(
                          colors: [
                            Colors.green.shade300,
                            Colors.green.shade500
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
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
          SliverSizedBox(height: Get.height * 0.04),
          AppHeader(text: "Activity"),
          //SliverToBoxAdapter(child: ContestCard(),)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical:8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.light.activityColor,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Progress',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.ubuntu().fontFamily,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ),
                            Icon(
                              Icons.local_activity,
                              size: 12,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                        const SizedBox(height: 150),
                        Text('0%',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.ubuntu().fontFamily,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical:8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.light.activityColor,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Progress',
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: GoogleFonts.ubuntu().fontFamily,
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                ),
                                Icon(
                                  Icons.local_activity,
                                  size: 12,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                            const SizedBox(height: 50),
                            Text('0%',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.ubuntu().fontFamily,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical:8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.light.activityColor,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Progress',
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: GoogleFonts.ubuntu().fontFamily,
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                ),
                                Icon(
                                  Icons.local_activity,
                                  size: 12,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                            const SizedBox(height: 50),
                            Text('0%',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.ubuntu().fontFamily,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
