import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/shared/widgets/custom_dots_indicator.dart';
import '../../manager/cubits/first_collection_indicator_cubit/first_collection_indicator_cubit.dart';
import 'first_collection_card.dart';

class FirstCollection extends StatelessWidget {
  const FirstCollection({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = FirstCollectionIndicatorCubit.get(context);
    return Stack(
      children: [
        PageView.builder(
          itemCount: cubit.recommendedCollections.length,
          itemBuilder: (context, index) => FirstCollectionCard(
            collection: cubit.recommendedCollections[index],
          ),
          onPageChanged: (index) {
            cubit.changeCurrentIndex(index);
          },
        ),
        // dots indicator
        Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: BlocBuilder<FirstCollectionIndicatorCubit,
              FirstCollectionIndicatorState>(
            builder: (context, state) {
              return CustomDotsIndicator(
                currentIndex: cubit.currentIndex,
                length: cubit.recommendedCollections.length,
              );
            },
          ),
        ),
      ],
    );
  }
}
