import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../features/custom_bottom_nav_bar.dart';
import '../../features/splash/presentation/views/splash_screen.dart';
import '../utilize/strings.dart';

class Redirects {
  /// redirect to dashboard id  On boarding is already visited

  static Widget redirection() {
    if (Hive.box(AppStrings.splashBox).get(AppStrings.isSplashVisited) !=
        true) {
      return const SplashScreen();
    } else {
      return const CustomBottomNavBar();
    }
  }
}
