import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/helpers_export.dart';

import 'color_constants.dart';

class AppBackground extends StatelessWidget {
  final Widget upperLayer;
  final Widget bottomLayer;
  const AppBackground(
      {super.key, required this.upperLayer, required this.bottomLayer});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorConstants.kbackground,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: upperLayer,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 30.h,
              ),
              decoration: const BoxDecoration(
                color: ColorConstants.kbackground2,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                ),
              ),
              child: bottomLayer,
            ),
          ],
        ),
      ),
    );
  }
}
