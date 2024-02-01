import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/size_config.dart';
import 'package:my_mtn_app/helpers/sizedbox_ext.dart';

import 'components/body_section.dart';
import 'components/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            10.height,
            const TopSection(),
            const Spacer(),
            const BodySection(),
          ],
        ),
      ),
    );
  }
}
