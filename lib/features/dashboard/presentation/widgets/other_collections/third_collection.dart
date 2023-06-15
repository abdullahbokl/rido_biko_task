import 'package:flutter/material.dart';

import '../../../../../core/utilize/images.dart';
import 'custom_collection_card.dart';

class ThirdCollection extends StatelessWidget {
  const ThirdCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: _cardDecoration(),
            child: CustomCollectionCard(
              width: constraints.maxWidth * 0.48,
              height: constraints.maxHeight,
              title: 'T-Shirt',
              desc: 'THE OFFICE LIFE',
              imagePath: AppImages.collectionsCollection2,
            ),
          ),
          Container(
            decoration: _cardDecoration(),
            child: CustomCollectionCard(
              width: constraints.maxWidth * 0.48,
              height: constraints.maxHeight,
              title: 'T-Shirt',
              desc: 'THE OFFICE LIFE',
              imagePath: AppImages.collectionsCollection1,
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _cardDecoration() => BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
      );
}
