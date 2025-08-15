import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/theme/app.colors.dart';

class PracticeQuestionAccuracy extends StatelessWidget {
  const PracticeQuestionAccuracy({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'PracticeQuestionAccuracy',
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
