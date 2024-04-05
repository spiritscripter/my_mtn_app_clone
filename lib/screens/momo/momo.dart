import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/helpers_export.dart';
import 'package:my_mtn_app/screens/widgets/header.dart';
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
            child: AppBackground(
              upperLayer: Column(
                crossAxisAlignment: crossStart,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    'Balance',
                    style: TextStyle(
                      fontSize: 20.h,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  SizedBox(height: 10.h),
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
                        SizedBox(width: 12.w),
                        Image.asset(
                          'assets/momo.png',
                          height: 50.h,
                          width: 50.w,
                        ),
                        SizedBox(width: 12.w),
                        Column(
                          mainAxisAlignment: mainCenter,
                          crossAxisAlignment: crossStart,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: ColorConstants.kprimary,
                                  child: Icon(
                                    Icons.phone_android_rounded,
                                    size: 10.h,
                                  ),
                                ),
                                SizedBox(width: 5.w),
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
                  SizedBox(height: 30.h),
                ],
              ),
              bottomLayer: Column(
                crossAxisAlignment: crossStart,
                children: [
                  buildTextHeader('Services'),
                  SizedBox(height: 20.h),
                  GridView.builder(
                    itemCount: MomoServices.values.length,
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
                            height: 60.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              color: const Color(0xFF004f70),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey.withOpacity(0.5),
                                  blurRadius: 6,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Icon(
                              MomoServices.values[index].icon,
                              color: Colors.white,
                              size: 30.h,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            MomoServices.values[index].toString(),
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
                  SizedBox(height: 10.h),
                  const Offers(headerText: "Momo App"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
