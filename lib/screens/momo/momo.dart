import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/helpers_export.dart';
import 'package:my_mtn_app/screens/components/header.dart';
import 'package:my_mtn_app/screens/widgets/offers.dart';
import 'package:my_mtn_app/screens/widgets/reusable_widgets.dart';
import 'package:my_mtn_app/shared/app_background.dart';
import 'package:my_mtn_app/shared/color_constants.dart';

@RoutePage()
class MomoScreen extends StatelessWidget {
  const MomoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Header(text: 'MoMo'),
          Expanded(
            child: SingleChildScrollView(
              child: AppBackground(
                upperLayer: Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    20.height,
                    Text(
                      'Balance',
                      style: TextStyle(
                        fontSize: 20.h,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    10.height,
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    10.height,
                    Container(
                      height: 110.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color(0xFF004f70),
                          width: 3,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 10,
                            spreadRadius: 8,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: mainSpaceBetween,
                        children: [
                          Container(
                              width: 5.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                color: Color(0xFF004f70),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              )),
                          12.width,
                          Image.asset(
                            'assets/logo.png',
                            height: 50.h,
                            width: 50.w,
                          ),
                          12.width,
                          Column(
                            mainAxisAlignment: mainCenter,
                            crossAxisAlignment: crossStart,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundColor: ColorConstants.kprimary,
                                    child: Icon(
                                      Icons.phone_android_rounded,
                                      size: 15.h,
                                    ),
                                  ),
                                  5.width,
                                  Text(
                                    'MoMo Balance',
                                    style: TextStyle(
                                      fontSize: 15.h,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'GHS ****.**',
                                    style: TextStyle(
                                      fontSize: 20.h,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      visualDensity: VisualDensity.compact,
                                      icon: const Icon(
                                        Icons.visibility_outlined,
                                        color: Colors.grey,
                                      ))
                                ],
                              ),
                              Text(
                                'Last login: 01/02/2023 at 15:09:35',
                                style: TextStyle(
                                  fontSize: 12.h,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const Spacer()
                        ],
                      ),
                    ),
                    30.height,
                  ],
                ),
                bottomLayer: Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    buildTextHeader('Services'),
                    20.height,
                    GridView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemBuilder: (_, index) {
                        return Column(
                          children: [
                            Container(
                              height: 70.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: const Color(0xFF004f70),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blueGrey.withOpacity(0.5),
                                    blurRadius: 8,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.stacked_bar_chart,
                                color: Colors.white,
                              ),
                            ),
                            10.height,
                            Text(
                              'Send Momo',
                              style: TextStyle(
                                fontSize: 15.h,
                                letterSpacing: 1.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    10.height,
                    const Offers(headerText: "Momo App"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
