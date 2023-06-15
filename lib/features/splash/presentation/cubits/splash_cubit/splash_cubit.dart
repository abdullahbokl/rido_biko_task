import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../../../core/utilize/images.dart';
import '../../../../../core/utilize/strings.dart';
import '../../../data/models/page_model.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  static SplashCubit get(context) => BlocProvider.of(context);

  SplashCubit() : super(SplashInitial());

  final PageController pageController = PageController();

  final List<PageModel> pages = [
    PageModel(
      title: 'Welcome to Bokl Market',
      desc:
          'Bokl BIKORIDO Market is a platform that connects you to the best sellers in your area',
      image: AppImages.collectionsCollection1,
    ),
    PageModel(
      title: 'Buy and Sell',
      desc: 'Buy and sell your products with ease',
      image: AppImages.collectionsCollection2,
    ),
    PageModel(
      title: 'Get the best deals',
      desc: 'Get the best deals from the best sellers in your area',
      image: AppImages.collectionsCollection1,
    ),
  ];

  /// variables
  int currentIndex = 0;

  onSplashChanged(int index) {
    currentIndex = index;
    emit(SplashChanged());
  }

  nextButtonPressed() {
    if (currentIndex < pages.length - 1) currentIndex++;
    pageController.nextPage(
      duration: const Duration(milliseconds: 600),
      curve: Curves.ease,
    );
    emit(SplashChanged());
  }

  skipButtonPressed() async {
    currentIndex = pages.length - 1;
    await pageController.animateToPage(
      currentIndex,
      duration: const Duration(milliseconds: 600),
      curve: Curves.ease,
    );
    emit(SplashChanged());
  }

  doneButtonPressed() async {
    var box = Hive.box(AppStrings.splashBox);
    box.put(AppStrings.isSplashVisited, true);
    emit(SplashChanged());
  }
}
