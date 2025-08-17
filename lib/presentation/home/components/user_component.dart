import 'package:flutter/material.dart';

class UserComponent extends StatelessWidget {
  const UserComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Colors.blue, Colors.green], // Define your gradient colors
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds),
                  child: const Text(
                    "Hi, John",
                    style: TextStyle(
                      // The color must be white for the gradient to show correctly
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Let’s Play some interesting Quiz",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.orange,
              backgroundImage: NetworkImage(
                'https://play-lh.googleusercontent.com/HHJb4ew7S16SHjqNjp1nEkVKn8L2j1rXPjVmF4fqf-mGjZYYIjhHYKjUJSLbB7SRx1HS',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
