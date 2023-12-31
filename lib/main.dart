import 'package:flutter/material.dart';
import 'package:ghouse/configs/config.dart';
import 'package:ghouse/pages/login.dart';

import 'configs/theme.dart';

void main() async {
  await initConfig();

  runApp(App(
    isDarkMode: true,
  ));
}

class App extends StatelessWidget {
  bool isDarkMode;
  App({required this.isDarkMode});

  //T
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? AppTheme.darkMode : AppTheme.light,
      darkTheme: AppTheme.darkMode,
      home: Login(),
    );
  }
}
