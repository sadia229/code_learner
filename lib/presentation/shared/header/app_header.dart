
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppHeader extends StatelessWidget {
  final String text;
  const AppHeader({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(bottom: 16),
        child: Text(
          text ?? '',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.ubuntu().fontFamily,
                color: Colors.black.withOpacity(0.8),
              ),
        ),
      ),
    );
  }
}
