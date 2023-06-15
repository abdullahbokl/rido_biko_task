import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utilize/images.dart';
import '../../../../data/models/category_model.dart';

part 'categories_list_state.dart';

class CategoriesListCubit extends Cubit<CategoriesListState> {
  CategoriesListCubit() : super(CategoriesListInitial());

  static CategoriesListCubit get(BuildContext context) =>
      BlocProvider.of(context);

  final List<CategoryModel> categories = [
    CategoryModel(
      id: 1,
      name: 'Men',
      image: AppImages.categoriesMen,
    ),
    CategoryModel(
      id: 2,
      name: 'Women',
      image: AppImages.categoriesWomen,
    ),
    CategoryModel(
      id: 3,
      name: 'Children',
      image: AppImages.categoriesBabyClothes,
    ),
    CategoryModel(
      id: 4,
      name: 'Bags',
      image: AppImages.categoriesBags,
    ),
    CategoryModel(
      id: 5,
      name: 'shoes',
      image: AppImages.categoriesShoes,
    ),
    CategoryModel(
      id: 6,
      name: 'mix',
      image: AppImages.categoriesBags,
    ),
  ];
}
