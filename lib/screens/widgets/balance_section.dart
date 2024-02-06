import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/helpers_export.dart';
import 'package:my_mtn_app/shared/color_constants.dart';

import 'reusable_widgets.dart';

enum BalanceType { airtime, data, sms, broadband }

// map the quick access type to the corresponding string value
extension BalanceTypeExtension on BalanceType {
  IconData get icon {
    switch (this) {
      case BalanceType.airtime:
        return Icons.phone_in_talk_rounded;

      case BalanceType.data:
        return Icons.data_usage_outlined;

      case BalanceType.broadband:
        return Icons.wifi_rounded;

      case BalanceType.sms:
        return Icons.email_outlined;
      default:
        return Icons.no_encryption;
    }
  }

  String get name {
    switch (this) {
      case BalanceType.airtime:
        return 'AIRTIME';
      case BalanceType.data:
        return 'DATA';
      case BalanceType.broadband:
        return 'BROADBAND';
      case BalanceType.sms:
        return 'SMS';
      default:
        return '';
    }
  }
}

class BalanceSection extends StatelessWidget {
  const BalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: mainSpaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Balances',
                  style: TextStyle(
                    fontSize: 18.h,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                3.width,
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.refresh,
                    size: 18.h,
                  ),
                ),
              ],
            ),
            buildViewAllBtn(),
          ],
        ),
        15.height,
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.6,
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: BalanceType.values.length,
          itemBuilder: (context, index) {
            String amount = '';
            if (BalanceType.values[index] == BalanceType.data) {
              amount = '0.0 GB';
            }
            if (BalanceType.values[index] == BalanceType.airtime) {
              amount = 'GHS 0.00';
            }
            if (BalanceType.values[index] == BalanceType.sms) {
              amount = '0 SMS';
            }
            return buildBalanceCard(
              balanceType: BalanceType.values[index],
              amount: amount,
            );
          },
        ),
      ],
    );
  }

  buildBalanceCard({
    required BalanceType balanceType,
    required String amount,
  }) {
    return Container(
      padding: EdgeInsets.only(
        top: 10.w,
        left: 2.w,
        right: 2.w,
        bottom: 2.h,
      ),
      decoration: BoxDecoration(
        color: ColorConstants.kprimary,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: mainSpaceBetween,
        crossAxisAlignment: crossStart,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                Icon(
                  balanceType.icon,
                  size: 15.h,
                ),
                5.width,
                Text(
                  balanceType.name,
                  style: TextStyle(
                    fontSize: 15.h,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 7.h,
            ),
            decoration: const BoxDecoration(
                color: ColorConstants.kbackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                )),
            child: Column(
              crossAxisAlignment: crossStart,
              children: [
                Text(
                  balanceType == BalanceType.broadband
                      ? "GET CONNECTED"
                      : amount,
                  style: TextStyle(
                    fontSize:
                        balanceType == BalanceType.broadband ? 15.h : 18.h,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Divider(color: Colors.grey.withOpacity(0.2)),
                if (balanceType == BalanceType.broadband) ...[
                  Text(
                    "CLICK HERE",
                    style: TextStyle(
                      fontSize: 12.h,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ] else
                  Text(
                    "BONUS :",
                    style: TextStyle(
                      fontSize: 12.h,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
