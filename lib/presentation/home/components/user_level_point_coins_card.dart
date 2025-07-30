import 'package:flutter/material.dart';

import '../../../infrastructure/theme/assets/app.assets.dart';

class UserLevelPointCoinsCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final double? height;

  const UserLevelPointCoinsCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image,  this.height});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image, height: height ?? 40),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
