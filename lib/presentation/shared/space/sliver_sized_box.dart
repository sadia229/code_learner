import 'package:flutter/material.dart';

class SliverSizedBox extends StatelessWidget {
  final double? height;
  final double? width;
  final bool? isHorizontal;

  const SliverSizedBox({
    super.key,
     this.height,
    this.width,
    this.isHorizontal,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: isHorizontal == true
          ? SizedBox(width: width)
          : SizedBox(height: height),
    );
  }
}
