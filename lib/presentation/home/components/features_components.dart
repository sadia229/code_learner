import 'package:flutter/material.dart';

import 'package:code_editor/presentation/home/components/features_card.dart';

class FeaturesComponent extends StatelessWidget {
  const FeaturesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
                    colors: [Colors.green.shade300, Colors.green.shade500],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  onTap: () {},
                ),
                //const Spacer(),
                const SizedBox(width: 12),
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
            const SizedBox(height: 12),
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
                const SizedBox(width: 12),
                FeaturesCard(
                  title: "Weekly Quiz",
                  gradient: LinearGradient(
                    colors: [Colors.green.shade300, Colors.green.shade500],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
