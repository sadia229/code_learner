import 'package:flutter/material.dart';


class ContestCard extends StatelessWidget {
  const ContestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: const Color(0xFFd6f6e7),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        'assets/images/image-two-removebg-preview.png',
        height: 50,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
