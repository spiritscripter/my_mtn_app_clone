import 'package:flutter/material.dart';
import 'package:my_mtn_app/shared/color_constants.dart';

import 'navigation/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstants.kprimary,
        fontFamily: 'GillSans',
      ),
      routerConfig: appRouter.config(),
    );
  }
}
