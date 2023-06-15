import 'package:flutter/material.dart';

class CollectionImage extends StatelessWidget {
  const CollectionImage({
    super.key,
    required this.imagePath,
    required this.height,
    required this.width,
  });

  final String imagePath;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
