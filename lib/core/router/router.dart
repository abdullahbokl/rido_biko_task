import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/dashboard/presentation/views/dashboard_screen.dart';
import '../../features/splash/presentation/views/splash_screen.dart';
import 'routes_name.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // on boarding screen
      case RoutesNames.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      // return sign in screen
      case RoutesNames.dashboardScreen:
        return CupertinoPageRoute(
          builder: (_) => const DashboardScreen(),
        );
      // default route (error)
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
