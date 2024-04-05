import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/size_config.dart';

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
        child: Column(
          children: [
            SizedBox(height: 10.h),
            const Header(isHome: true),
            Expanded(
              child: AppBackground(
                bottomLayer: const QuickAccessSection(),
                upperLayer: Column(
                  children: [
                    SizedBox(height: 20.h),
                    const BalanceSection(),
                    SizedBox(height: 40.h),
                    Text(
                      "Showing balances as at Jan 30 2024; 2:42:34 PM",
                      style: TextStyle(
                        fontSize: 13.h,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
