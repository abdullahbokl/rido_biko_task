import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared/widgets/custom_dots_indicator.dart';
import '../cubits/splash_cubit/splash_cubit.dart';
import '../widgets/splash_buttons.dart';
import '../widgets/splash_content_page_view.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = SplashCubit.get(context);
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.8,
              child: const SplashContentPageView(),
            ),
            const Spacer(flex: 3),

            /// page indicator
            BlocBuilder<SplashCubit, SplashState>(
              builder: (context, state) {
                return CustomDotsIndicator(
                  currentIndex: cubit.currentIndex,
                  length: cubit.pages.length,
                );
              },
            ),
            const Spacer(flex: 2),

            /// on boarding buttons
            const SplashButtons(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
