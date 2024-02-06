import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/size_config.dart';
import 'package:my_mtn_app/helpers/sizedbox_ext.dart';
import 'package:my_mtn_app/shared/app_background.dart';

import '../widgets/header.dart';
import 'components/balance_section.dart';
import 'components/quick_access_section.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              10.height,
              const Header(isHome: true),
              AppBackground(
                bottomLayer: const QuickAccessSection(),
                upperLayer: Column(
                  children: [
                    20.height,
                    const BalanceSection(),
                    40.height,
                    Text(
                      "Showing balances as at Jan 30 2024; 2:42:34 PM",
                      style: TextStyle(
                        fontSize: 13.h,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    20.height,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
