import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/enums/shop_list_enum.dart';
import 'package:my_mtn_app/helpers/helpers_export.dart';
import 'package:my_mtn_app/screens/widgets/offers.dart';
import 'package:my_mtn_app/screens/widgets/reusable_widgets.dart';
import 'package:my_mtn_app/shared/color_constants.dart';

import '../widgets/header.dart';

@RoutePage()
class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: ColorConstants.kbackground2,
        child: Column(
          children: [
            const Header(text: 'Shop'),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: ColorConstants.kprimary,
                      height: 150.h,
                    ),
                    20.height,
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      color: ColorConstants.kbackground2,
                      child: Column(
                        crossAxisAlignment: crossStart,
                        children: [
                          buildTextHeader("What do you need?"),
                          10.height,
                          GridView.builder(
                            itemCount: ShopList.values.length,
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1.6,
                              crossAxisSpacing: 10.w,
                              mainAxisSpacing: 10.h,
                            ),
                            itemBuilder: (_, index) {
                              return Column(
                                // mainAxisSize: mainMin,
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      ShopList.values[index].icon,
                                      color: Colors.white,
                                    ),
                                  ),
                                  5.height,
                                  Text(
                                    ShopList.values[index].toString(),
                                    style: TextStyle(
                                      fontSize: 15.h,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    20.height,
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      decoration: const BoxDecoration(
                        color: ColorConstants.kbackground,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          50.height,
                          const Offers(headerText: 'Pulse Offers and Loyalty'),
                          100.height,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
