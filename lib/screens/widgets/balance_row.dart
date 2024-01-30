import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/helpers_export.dart';

import 'reusable_widgets.dart';

class BalanceRow extends StatelessWidget {
  const BalanceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainSpaceBetween,
      children: [
        Row(
          children: [
            Text(
              'Balances',
              style: TextStyle(
                fontSize: getProportionateScreenHeight(18),
                fontWeight: FontWeight.w500,
              ),
            ),
            3.width,
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.refresh,
                size: getProportionateScreenHeight(18),
              ),
            ),
          ],
        ),
        buildViewAllBtn(),
      ],
    );
  }
}
