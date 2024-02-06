import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_mtn_app/navigation/router.dart';
import 'package:my_mtn_app/shared/color_constants.dart';

@RoutePage()
class MainBottomBarScreen extends StatelessWidget {
  const MainBottomBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        ShopRoute(),
        MomoRoute(),
        MoreRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        fixedColor: ColorConstants.kprimary,
        unselectedItemColor: const Color(0xFF323232),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money_rounded),
            label: 'Momo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_vert_rounded),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
