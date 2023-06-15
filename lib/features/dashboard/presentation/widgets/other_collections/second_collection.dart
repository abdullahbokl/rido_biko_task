import 'package:flutter/material.dart';

import '../../../../../core/utilize/images.dart';
import 'custom_collection_card.dart';

class SecondCollection extends StatelessWidget {
  const SecondCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: LayoutBuilder(
        builder: (context, constraints) => CustomCollectionCard(
          imagePath: AppImages.collectionsCollection2,
          width: constraints.minWidth,
          height: constraints.minHeight,
          title: 'FOR GEN',
          desc: 'HANG OUT & PARTY',
        ),
      ),
    );
  }
}
