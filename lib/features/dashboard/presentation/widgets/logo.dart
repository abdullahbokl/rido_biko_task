import 'package:flutter/material.dart';
import 'package:rido_biko/core/utilize/font_size.dart';

import '../../../../core/shared/widgets/custom_icon_image.dart';
import '../../../../core/shared/widgets/custom_text.dart';
import '../../../../core/utilize/images.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CustomIconImage(
          imagePath: AppImages.imagesLogo,
        ),
        SizedBox(width: 10),
        CustomText(
          text: 'BikoRido',
          fontSize: AppFontSize.extraBig,
        ),
      ],
    );
  }
}
