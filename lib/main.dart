import 'package:flutter/material.dart';

import 'core/configs/app_settings.dart';
import 'core/injections/injection.dart';
import 'features/utils/presentation/pages/initial_page.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppSettings.appName,
      darkTheme: ThemeData.dark(),
      home: const InitialPage(),
    );
  }
}