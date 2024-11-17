import 'package:auto_route/auto_route.dart';
import 'package:parkingclic/feature/presentation/login/screen/pages_login_screen.dart';
import 'package:parkingclic/feature/presentation/login/welcome/pages_splash_screen.dart';
import 'package:parkingclic/feature/presentation/parking/screen/pages_parking_home_screen.dart';
import 'package:parkingclic/feature/presentation/register/pages_register_screen.dart';
import 'package:parkingclic/feature/presentation/skip/pages_skip_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: RoutesSplashRoute.page, initial: true),
        AutoRoute(page: RoutesLoginRoute.page),
        AutoRoute(page: RoutesSkipRoute.page),
        AutoRoute(page: RoutesRegisterRoute.page),
        AutoRoute(page: RoutesParkingHomeRoute.page)
      ];
}
