import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/helpers_export.dart';

Row buildViewAllBtn() {
  return Row(
    children: [
      Text(
        'View all',
        style: TextStyle(
          fontSize: getProportionateScreenHeight(18),
          fontWeight: FontWeight.w400,
        ),
      ),
      2.width,
      Icon(Icons.arrow_circle_right_rounded,
          size: getProportionateScreenHeight(15)),
    ],
  );
}
