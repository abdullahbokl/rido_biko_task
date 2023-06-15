import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'bloc_observer.dart';
import 'core/utilize/strings.dart';
import 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _hiveInit();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

_hiveInit() async {
  await Hive.initFlutter();
  await Hive.openBox(AppStrings.splashBox);
}
