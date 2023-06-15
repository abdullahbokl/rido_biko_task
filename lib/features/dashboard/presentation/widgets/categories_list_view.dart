import 'package:flutter/material.dart';

import '../../../../core/shared/widgets/custom_icon_image.dart';
import '../../../../core/shared/widgets/custom_text.dart';
import '../../../../core/utilize/font_size.dart';
import '../../data/models/category_model.dart';
import '../manager/cubits/categories_list_cubit/categories_list_cubit.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = CategoriesListCubit.get(context);
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: cubit.categories.length,
        itemBuilder: (context, index) => CategoryItem(
          category: cubit.categories[index],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: CustomIconImage(imagePath: category.image),
          ),
          const SizedBox(height: 5),
          CustomText(text: category.name, fontSize: AppFontSize.small),
        ],
      ),
    );
  }
}
