import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/helpers_export.dart';
import 'package:my_mtn_app/shared/color_constants.dart';

@RoutePage()
class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: ColorConstants.kbackground,
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: ColorConstants.kprimary,
                  width: double.infinity,
                  height: 65.h,
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/logo.png',
                    height: 70.h,
                    width: 70.w,
                  ),
                ),
                Positioned(
                  top: 28.h,
                  left: 0,
                  right: 0,
                  child: Container(
                      width: 90.w,
                      height: 90.h,
                      decoration: BoxDecoration(
                        color: ColorConstants.kprimary,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: Icon(
                        Icons.person_rounded,
                        size: 50.h,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            // Add more widgets here
            SizedBox(height: 70.h),
            Text('MY MTN GHANA',
                style: TextStyle(
                  fontSize: 20.h,
                  fontWeight: FontWeight.w800,
                )),
            SizedBox(height: 5.h),
            Text("+23300000000",
                style: TextStyle(
                  fontSize: 15.h,
                  letterSpacing: .5,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(height: 10.h),
            buildSecondaryBtn(),

            const Spacer(),
            // bottom section
            Container(
              width: double.infinity,
              height: 450.h,
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
              decoration: const BoxDecoration(
                color: ColorConstants.kbackground2,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    Text('MyMTN',
                        style: TextStyle(
                          fontSize: 18.h,
                          color: Colors.grey,
                          fontWeight: FontWeight.w900,
                        )),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisSize: mainMin,
                      mainAxisAlignment: mainSpaceEvenly,
                      children: [
                        buildOptionsCard(
                            Icons.star_border_rounded, 'Send\nFeedback'),
                        SizedBox(width: 20.w),
                        buildOptionsCard(Icons.favorite_border_rounded,
                            'Manage\nSubscriptions'),
                      ],
                    ),
                    SizedBox(height: 28.h),
                    Text('Get More From MTN',
                        style: TextStyle(
                          fontSize: 18.h,
                          color: Colors.grey,
                          fontWeight: FontWeight.w900,
                        )),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisSize: mainMin,
                      mainAxisAlignment: mainSpaceEvenly,
                      children: [
                        buildOptionsCard(
                            Icons.app_shortcut_rounded, 'Discover\nApps'),
                        SizedBox(width: 20.w),
                        buildOptionsCard(
                            Icons.call_rounded, 'Request\nBroadband'),
                        SizedBox(width: 20.w),
                        buildOptionsCard(Icons.sim_card_rounded, 'Get\nE-sim'),
                        SizedBox(width: 20.w),
                        buildOptionsCard(
                            Icons.play_circle_outline_rounded, 'Play\n'),
                      ],
                    ),
                    SizedBox(height: 28.h),
                    Text('Help and Support',
                        style: TextStyle(
                          fontSize: 18.h,
                          color: Colors.grey,
                          fontWeight: FontWeight.w900,
                        )),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisSize: mainMin,
                      mainAxisAlignment: mainSpaceEvenly,
                      children: [
                        buildOptionsCard(
                            Icons.contacts_outlined, 'Contact\nUs'),
                        SizedBox(width: 20.w),
                        buildOptionsCard(
                            Icons.storefront_sharp, 'Find a\nStore'),
                      ],
                    ),
                    SizedBox(height: 28.h),
                    Text('Legal',
                        style: TextStyle(
                          fontSize: 18.h,
                          color: Colors.grey,
                          fontWeight: FontWeight.w900,
                        )),
                    SizedBox(height: 20.h),
                    buildOptionsCard(
                        Icons.insert_drive_file_outlined, 'Legal\nPolicy'),
                    SizedBox(height: 30.h),

                    // APP VERSION
                    Align(
                      alignment: Alignment.center,
                      child: Text('APP VERSION 2.0.6 12250',
                          style: TextStyle(
                            fontSize: 15.h,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    SizedBox(height: 20.h),
                    Align(
                      alignment: Alignment.center,
                      child: buildSecondaryBtn(isLogout: true),
                    ),
                    SizedBox(height: 30.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildSecondaryBtn({bool isLogout = false}) {
    return Container(
      height: 40.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: mainMin,
        mainAxisAlignment: mainSpaceBetween,
        children: [
          Icon(
            isLogout ? Icons.logout : Icons.account_circle_outlined,
            size: 15.h,
            color: Colors.black,
          ),
          SizedBox(width: 10.w),
          Text(
            isLogout ? 'LOGOUT' : 'MY ACCOUNT',
            style: TextStyle(
              fontSize: 12.h,
              fontWeight: FontWeight.w600,
            ),
          ),
          if (!isLogout)
            Icon(
              Icons.chevron_right_rounded,
              size: 25.h,
            ),
        ],
      ),
    );
  }

  Column buildOptionsCard(IconData iconData, String title) {
    return Column(
      children: [
        Container(
          height: 48.h,
          width: 48.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: ColorConstants.kprimary,
              width: 2,
            ),
          ),
          child: Icon(
            iconData,
            size: 25.h,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 15.h),
        Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.h,
              color: Colors.black,
              letterSpacing: 0.7,
              fontWeight: FontWeight.w600,
            )),
      ],
    );
  }
}
