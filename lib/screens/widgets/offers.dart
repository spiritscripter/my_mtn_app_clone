import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/helpers_export.dart';
import 'package:my_mtn_app/screens/widgets/reusable_widgets.dart';
import 'package:my_mtn_app/shared/color_constants.dart';

class Offers extends StatelessWidget {
  final String headerText;
  const Offers({
    super.key,
    required this.headerText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        buildTextHeader(headerText),
        SizedBox(height: 20.h),
        Container(
          height: 100.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorConstants.kprimary,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
