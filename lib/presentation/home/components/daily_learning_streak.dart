import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../infrastructure/theme/app.colors.dart';

class DailyLearningStreak extends StatelessWidget {
  const DailyLearningStreak({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.light.activityColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'DailyLearningStreak',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.ubuntu().fontFamily,
                      color: Colors.black.withOpacity(0.8),
                    ),
              ),
              SizedBox(width: 12),
              Icon(
                Icons.local_activity,
                size: 12,
                color: Colors.black54,
              ),
            ],
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: CircularPercentIndicator(
              radius: 60.0,
              lineWidth: 12.0,
              percent: 0.30,
              curve: Curves.bounceOut,
              circularStrokeCap: CircularStrokeCap.round,
              animation: true,
              center: Text("30%"),
              progressColor: Colors.orange,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '0%',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.ubuntu().fontFamily,
                  color: Colors.black.withOpacity(0.8),
                ),
          ),
        ],
      ),
    );
  }
}
