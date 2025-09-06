// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class FeaturesCard extends StatelessWidget {
//   final String title;
//   final Color color;
//   final Color highlightColor;
//   final Color textColor;
//   final VoidCallback onTap;
//   const FeaturesCard({super.key, required this.title, required this.color, required this.onTap, required this.highlightColor, required this.textColor});
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       borderRadius: BorderRadius.circular(8),
//       highlightColor: highlightColor,
//       onTap: onTap,
//       child: Ink(
//         width: Get.width * 0.45,
//         height: 60,
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Center(
//           child: Text(
//             title,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               color: textColor,
//               fontSize: 14.5,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturesCard extends StatefulWidget {
  final String title;
  final Gradient gradient; // Use a Gradient
  final VoidCallback onTap;

  const FeaturesCard({
    super.key,
    required this.title,
    required this.gradient,
    required this.onTap,
  });

  @override
  State<FeaturesCard> createState() => _FeaturesCardState();
}

class _FeaturesCardState extends State<FeaturesCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.96).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    _animationController.forward();
  }

  void _handleTapUp(TapUpDetails details) {
    _animationController.reverse();
    widget.onTap(); // Call the original onTap
  }

  void _handleTapCancel() {
    _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), // Even softer radius
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 18,
                spreadRadius: -2, // Pulls the shadow in a bit
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            // Make Material transparent to show gradient
            borderRadius: BorderRadius.circular(14),
            child: InkWell(
              borderRadius: BorderRadius.circular(14),
              splashColor: Colors.white.withOpacity(0.12),
              highlightColor: Colors.white.withOpacity(0.06),
              // onTap is handled by GestureDetector for animation coordination
              onTap: widget.onTap,
              child: Ink(
                // Use Ink for decoration if Material is transparent
                width: Get.width * 0.44,
                height: 62,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  gradient: widget.gradient, // Apply gradient here
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.ubuntu().fontFamily,
                          color: Colors.white,
                          letterSpacing: 0.3,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
