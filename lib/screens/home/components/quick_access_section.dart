import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/enums/quick_access_enum.dart';
import 'package:my_mtn_app/helpers/helpers_export.dart';

import '../../widgets/offers.dart';
import '../../widgets/reusable_widgets.dart';

class QuickAccessSection extends StatelessWidget {
  const QuickAccessSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Row(
          mainAxisAlignment: mainSpaceBetween,
          children: [
            buildTextHeader('Quick access'),
            buildViewAllBtn(),
          ],
        ),
        20.height,
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 14,
            childAspectRatio: 2.9,
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: QuickAccessType.values.length,
          itemBuilder: (context, index) {
            return buildQuickAccessCard(type: QuickAccessType.values[index]);
          },
        ),
        40.height,
        const Offers(headerText: 'Pulse Offers and Loyalty'),
      ],
    );
  }

  buildQuickAccessCard({required QuickAccessType type}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: const Color(0xFF323232),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: Colors.white,
          child: Icon(
            type.icon,
            color: Colors.black,
            size: 20.h,
          ),
        ),
        5.width,
        Text(
          type.name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.2,
            fontSize: 16.h,
          ),
        ),
      ]),
    );
  }
}
