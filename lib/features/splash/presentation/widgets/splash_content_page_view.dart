import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/splash_cubit/splash_cubit.dart';
import 'page_template.dart';

class SplashContentPageView extends StatelessWidget {
  const SplashContentPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SplashCubit splashCubit = BlocProvider.of<SplashCubit>(context);
    return BlocBuilder<SplashCubit, SplashState>(
      builder: (context, state) {
        return PageView(
          controller: splashCubit.pageController,
          onPageChanged: (index) {
            splashCubit.onSplashChanged(index);
          },
          children: [
            for (int i = 0; i < splashCubit.pages.length; i++)
              PageTemplate(
                page: splashCubit.pages[i],
              ),
          ],
        );
      },
    );
  }
}
