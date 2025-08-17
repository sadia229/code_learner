import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:code_editor/infrastructure/theme/app.colors.dart';

class PracticeQuestionAccuracy extends StatelessWidget {
  const PracticeQuestionAccuracy({super.key});

  @override
  Widget build(BuildContext context) {
    // Example data (percent values for each day)
    final data = [30, 60, 10, 80, 40, 70, 50]; // percentages

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.light.activityColor,
      ),
      child: Column(

        children: [
          Text(
            'Practice Question Accuracy',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.ubuntu().fontFamily,
                  color: Colors.black.withOpacity(0.8),
                ),
          ),
          const SizedBox(height: 40),

          /// Simple Bar Chart
          SizedBox(
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(data.length, (index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Animated Bar
                    TweenAnimationBuilder<double>(
                      tween: Tween(begin: 0, end: data[index].toDouble()),
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.easeOutCubic,
                      builder: (context, value, child) {
                        return Container(
                          width: 15,
                          margin: const EdgeInsets.only(right: 10),
                          height: (value / 100) * 100, // scale to 150px max
                          decoration: BoxDecoration(
                            color: value < 30? Colors.red.shade300 : value < 60? Colors.blue.shade300 : Colors.green.shade300,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 6),
                    // Day label
                    Text(
                      ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"][index],
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
