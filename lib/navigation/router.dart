import 'package:auto_route/auto_route.dart';
import 'package:my_mtn_app/screens/home/home.dart';
import 'package:my_mtn_app/screens/momo/momo.dart';
import 'package:my_mtn_app/screens/more/more.dart';
import 'package:my_mtn_app/screens/shop/shop.dart';
import 'package:my_mtn_app/screens/main_bottom_bar_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainBottomBarRoute.page,
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: ShopRoute.page),
            AutoRoute(page: MomoRoute.page),
            AutoRoute(page: MoreRoute.page),
          ],
        ),
      ];
}
