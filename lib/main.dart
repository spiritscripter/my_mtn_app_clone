import 'package:flutter/material.dart';
import 'package:my_mtn_app/screens/home.dart';
import 'package:my_mtn_app/shared/color_constants.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstants.kprimary,
        fontFamily: 'GillSans',
      ),
      home: const HomeScreen(),
    );
  }
}
