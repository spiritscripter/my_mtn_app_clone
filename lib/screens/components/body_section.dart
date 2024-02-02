import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/helpers_export.dart';
import 'package:my_mtn_app/screens/widgets/quick_access_section.dart';

import '../../shared/color_constants.dart';
import '../widgets/balance_section.dart';

class BodySection extends StatelessWidget {
  const BodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.88,
      decoration: const BoxDecoration(
        color: ColorConstants.kbackground,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            20.height,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: const BalanceSection(),
            ),
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
            const QuickAccessSection(),
          ],
        ),
      ),
    );
  }
}
