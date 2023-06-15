import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utilize/images.dart';
import '../../../../data/models/recommended_model.dart';

part 'first_collection_indicator_state.dart';

class FirstCollectionIndicatorCubit
    extends Cubit<FirstCollectionIndicatorState> {
  FirstCollectionIndicatorCubit() : super(FirstCollectionIndicatorInitial());

  static FirstCollectionIndicatorCubit get(context) => BlocProvider.of(context);

  final List<CollectionModel> recommendedCollections = [
    CollectionModel(
      title: 'summer collection 2019',
      description: 'blue summer are already in store',
      image: AppImages.collectionsCollection1,
    ),
    CollectionModel(
      title: 'summer',
      description: 'blue summer are already in store',
      image: AppImages.collectionsCollection2,
    ),
  ];

  int currentIndex = 0;

  changeCurrentIndex(int index) {
    currentIndex = index;
    emit(FirstCollectionIndicatorChanged());
  }
}
