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
          height: getProportionateScreenHeight(50),
          width: getProportionateScreenWidth(50),
        ),
        Text.rich(
          TextSpan(
            text: 'Yo!',
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenHeight(20),
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: ' MTN GHANA',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenHeight(20),
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
