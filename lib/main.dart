import 'package:flutter/material.dart';
import 'package:ghouse/pages/login.dart';

import 'configs/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  //T
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppTheme.PRIMARYCOLOR,
          primaryColorDark: AppTheme.SECONDARYCOLOR),
      home: Login(),
    );
  }
}
