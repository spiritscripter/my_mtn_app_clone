import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/helpers_export.dart';

Text buildTextHeader(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 20.h,
      fontWeight: FontWeight.w500,
    ),
  );
}

Row buildViewAllBtn() {
  return Row(
    children: [
      Text(
        'View all',
        style: TextStyle(
          fontSize: 18.h,
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(width: 2.w),
      CircleAvatar(
        radius: 5,
        backgroundColor: Colors.black,
        child: Icon(
          Icons.chevron_right_rounded,
          size: 11.h,
          color: Colors.white,
        ),
      ),
    ],
  );
}
