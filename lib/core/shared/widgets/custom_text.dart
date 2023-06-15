import 'package:flutter/material.dart';

import '../../utilize/font_size.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.fontSize = AppFontSize.big,
    this.maxLines = 3,
  });

  final String text;
  final double fontSize;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
        color: Colors.black54,
        fontSize: fontSize,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
