import 'package:flutter/material.dart';

import '../../helpers/size_config.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainSpaceBetween,
      children: [
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
        IconButton(onPressed: () {}, icon: const Icon(Icons.boy_outlined)),
      ],
    );
  }
}
