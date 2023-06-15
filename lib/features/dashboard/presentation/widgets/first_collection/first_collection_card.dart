import 'package:flutter/material.dart';

import '../../../../../core/utilize/font_size.dart';
import '../../../data/models/recommended_model.dart';
import '../collectionImage.dart';

class FirstCollectionCard extends StatelessWidget {
  const FirstCollectionCard({
    super.key,
    required this.collection,
  });

  final CollectionModel collection;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned(
              right: 0,
              child: CollectionImage(
                imagePath: collection.image,
                height: constraints.maxHeight,
                width: constraints.maxWidth * 0.5,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              width: constraints.maxWidth * 0.55,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    '| summer collection 2019',
                    style: TextStyle(
                      fontSize: AppFontSize.small,
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'blue summer are already in store',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
