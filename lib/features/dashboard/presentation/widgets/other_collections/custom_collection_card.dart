import 'package:flutter/material.dart';

import '../../../../../core/shared/widgets/custom_text.dart';
import '../../../../../core/utilize/font_size.dart';
import '../collectionImage.dart';

class CustomCollectionCard extends StatelessWidget {
  const CustomCollectionCard({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.desc,
    required this.imagePath,
  });

  final double width;
  final double height;
  final String title;
  final String desc;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          SizedBox(
            width: width * 0.55,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomText(
                  text: title,
                  fontSize: AppFontSize.medium,
                ),
                CustomText(text: desc),
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: CollectionImage(
              imagePath: imagePath,
              width: width * 0.5,
              height: height,
            ),
          ),
        ],
      ),
    );
  }
}
