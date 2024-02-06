import 'package:flutter/material.dart';
import 'package:my_mtn_app/shared/color_constants.dart';

import '../../helpers/size_config.dart';

class Header extends StatelessWidget {
  final bool isHome;
  final String? text;
  const Header({super.key, this.isHome = false, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.kprimary,
      child: Row(
        mainAxisAlignment: mainSpaceBetween,
        children: [
          if (isHome) ...[
            Image.asset(
              'assets/logo.png',
              height: 50.h,
              width: 50.w,
            ),
            Text.rich(
              TextSpan(
                text: 'Yo!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.h,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: ' MTN GHANA',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.h,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.child_care_outlined)),
          ]

          // Add more widgets here
          else
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                text ?? '',
                style: TextStyle(fontSize: 20.h, fontWeight: FontWeight.w600),
              ),
            ),
        ],
      ),
    );
  }
}
