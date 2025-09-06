import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final double? fontSize;

  const GradientText({super.key, required this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [Colors.blue, Colors.green],
        // Define your gradient colors
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(bounds),
      child: Text(
        text,
        style: TextStyle(
          // The color must be white for the gradient to show correctly
          color: Colors.white,
          fontSize: fontSize ?? 28,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
