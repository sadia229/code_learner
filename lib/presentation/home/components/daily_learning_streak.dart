import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:code_editor/infrastructure/theme/app.colors.dart';

class DailyLearningStreak extends StatelessWidget {
  const DailyLearningStreak({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.light.activityColor,
      ),
      child: Column(
        children: [
          Text(
            'Daily Learning Streak',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.ubuntu().fontFamily,
                  color: Colors.black.withOpacity(0.8),
                ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircularPercentIndicator(
              radius: 56.0,
              lineWidth: 12.0,
              percent: 0.70,
              curve: Curves.bounceOut,
              circularStrokeCap: CircularStrokeCap.round,
              animation: true,
              center: Text(
                '70%',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.ubuntu().fontFamily,
                      color: Colors.black.withOpacity(0.8),
                    ),
              ),
              progressColor: const Color(0xFF2196F3),
              // Bright Blue
              backgroundColor: const Color(0xFFBBDEFB), // Light Sky Blue
            ),
          ),
          // const SizedBox(height: 20),
          // Text(
          //   '0%',
          //   style: Theme.of(context).textTheme.bodySmall?.copyWith(
          //         fontWeight: FontWeight.bold,
          //         fontFamily: GoogleFonts.ubuntu().fontFamily,
          //         color: Colors.black.withOpacity(0.8),
          //       ),
          // ),
        ],
      ),
    );
  }
}
