import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../custom_bottom_nav_bar.dart';
import '../cubits/splash_cubit/splash_cubit.dart';

class SplashButtons extends StatelessWidget {
  const SplashButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SplashCubit splashCubit = BlocProvider.of<SplashCubit>(context);
    return BlocBuilder<SplashCubit, SplashState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: splashCubit.currentIndex == splashCubit.pages.length - 1
              ? _getStartedButton(context)
              : _otherButtons(context),
        );
      },
    );
  }

  _otherButtons(BuildContext context) {
    final SplashCubit splashCubit = BlocProvider.of<SplashCubit>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Skip button
        ElevatedButton(
          onPressed: () {
            splashCubit.skipButtonPressed();
          },
          child: const Text('Skip'),
        ),

        // Next button
        ElevatedButton(
          onPressed: () {
            splashCubit.nextButtonPressed();
          },
          child: const Text('Next'),
        ),
      ],
    );
  }

  _getStartedButton(BuildContext context) {
    final SplashCubit splashCubit = BlocProvider.of<SplashCubit>(context);
    return ElevatedButton(
      onPressed: () {
        splashCubit.doneButtonPressed();
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const CustomBottomNavBar(),
          ),
        );
      },
      child: const Text('Get Started'),
    );
  }
}
