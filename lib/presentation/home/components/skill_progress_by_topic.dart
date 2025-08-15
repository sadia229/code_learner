import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../infrastructure/theme/app.colors.dart';

class SkillProgressByTopic extends StatelessWidget {
  const SkillProgressByTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.light.activityColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'SkillProgressByTopic',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.ubuntu().fontFamily,
                      color: Colors.black.withOpacity(0.8),
                    ),
              ),
              const SizedBox(width: 12),
              Icon(
                Icons.local_activity,
                size: 12,
                color: Colors.black54,
              ),
            ],
          ),
          const SizedBox(height: 50),
          LinearPercentIndicator(
            width: 140.0,
            lineHeight: 14.0,
            percent: 0.5,
            linearStrokeCap: LinearStrokeCap.roundAll,
            backgroundColor: Colors.grey,
            progressColor: Colors.blue,
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
