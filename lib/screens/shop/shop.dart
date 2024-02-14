import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/helpers_export.dart';
import 'package:my_mtn_app/screens/widgets/offers.dart';
import 'package:my_mtn_app/screens/widgets/reusable_widgets.dart';
import 'package:my_mtn_app/shared/color_constants.dart';

import '../widgets/header.dart';

enum ShopList {
  airtime,
  data,
  mashup,
  broadband,
  just4u,
  callAbroad,
  callerTunez,
  smsPlus;

  IconData get icon {
    return switch (this) {
      ShopList.airtime => Icons.phone_in_talk_rounded,
      ShopList.data => Icons.data_usage_outlined,
      ShopList.broadband => Icons.wifi_rounded,
      ShopList.mashup => Icons.storage_rounded,
      ShopList.just4u => Icons.card_giftcard_rounded,
      ShopList.callAbroad => Icons.call_rounded,
      ShopList.callerTunez => Icons.music_note_rounded,
      ShopList.smsPlus => Icons.email_outlined,
    };
  }

  @override
  String toString() => switch (this) {
        ShopList.airtime => 'Airtime',
        ShopList.data => 'Data',
        ShopList.broadband => 'Broadband',
        ShopList.mashup => 'Mashup',
        ShopList.just4u => 'Just4U',
        ShopList.callAbroad => 'Call Abroad',
        ShopList.callerTunez => 'Caller Tunez',
        ShopList.smsPlus => 'SMS Plus',
      };
}

extension ShopListExtension on ShopList {
  IconData get icon {
    switch (this) {
      case ShopList.airtime:
        return Icons.phone_in_talk_rounded;

      case ShopList.data:
        return Icons.data_usage_outlined;

      case ShopList.broadband:
        return Icons.wifi_rounded;

      case ShopList.mashup:
        return Icons.storage_rounded;

      case ShopList.just4u:
        return Icons.card_giftcard_rounded;

      case ShopList.callAbroad:
        return Icons.call_rounded;

      case ShopList.callerTunez:
        return Icons.music_note_rounded;

      case ShopList.smsPlus:
        return Icons.email_outlined;
      default:
        return Icons.no_encryption;
    }
  }

  String get name {
    switch (this) {
      case ShopList.airtime:
        return 'Airtime';

      case ShopList.data:
        return 'Data';

      case ShopList.broadband:
        return 'Broadband';

      case ShopList.mashup:
        return 'Mashup';

      case ShopList.just4u:
        return 'Just4U';

      case ShopList.callAbroad:
        return 'Call Abroad';

      case ShopList.callerTunez:
        return 'Caller Tunez';

      case ShopList.smsPlus:
        return 'SMS Plus';
      default:
        return '';
    }
  }
}

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
