import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator(
      {super.key, required this.currentIndex, required this.length});

  final int currentIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: length,
      position: currentIndex,
      decorator: DotsDecorator(
          // Inactive dot
          size: const Size(30, 5.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          color: Colors.grey.withOpacity(0.5),
          // active dot
          activeSize: const Size(30.0, 9.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          activeColor: Colors.grey),
    );
  }
}
