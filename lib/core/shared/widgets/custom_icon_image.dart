import 'package:flutter/material.dart';

class CustomIconImage extends StatelessWidget {
  const CustomIconImage({
    super.key,
    required this.imagePath,
    this.iconSize = 40,
  });

  final String imagePath;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Image(
      height: iconSize,
      width: iconSize,
      image: AssetImage(imagePath),
    );
  }
}
