import 'package:flutter/material.dart';

import 'first_collection/FirstCollection.dart';
import 'other_collections/second_collection.dart';
import 'other_collections/third_collection.dart';

class CollectionsColumn extends StatelessWidget {
  const CollectionsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: constraints.maxHeight * 0.4,
                width: constraints.maxWidth,
                child: const FirstCollection(),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: constraints.maxHeight * 0.3,
                width: constraints.maxWidth,
                child: const SecondCollection(),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: constraints.maxHeight * 0.3,
                child: const ThirdCollection(),
              ),
            ],
          ),
        );
      },
    );
  }
}
