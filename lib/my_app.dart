import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/router/redirects.dart';
import 'core/router/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BikoRido Task',
      home: Redirects.redirection(),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
