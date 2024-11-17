// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    RoutesLoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PagesLoginScreen(),
      );
    },
    RoutesParkingHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PagesParkingHomeScreen(),
      );
    },
    RoutesRegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PagesRegisterScreen(),
      );
    },
    RoutesSkipRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PagesSkipScreen(),
      );
    },
    RoutesSplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PagesSplashScreen(),
      );
    },
  };
}

/// generated route for
/// [PagesLoginScreen]
class RoutesLoginRoute extends PageRouteInfo<void> {
  const RoutesLoginRoute({List<PageRouteInfo>? children})
      : super(
          RoutesLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoutesLoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PagesParkingHomeScreen]
class RoutesParkingHomeRoute extends PageRouteInfo<void> {
  const RoutesParkingHomeRoute({List<PageRouteInfo>? children})
      : super(
          RoutesParkingHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoutesParkingHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PagesRegisterScreen]
class RoutesRegisterRoute extends PageRouteInfo<void> {
  const RoutesRegisterRoute({List<PageRouteInfo>? children})
      : super(
          RoutesRegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoutesRegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PagesSkipScreen]
class RoutesSkipRoute extends PageRouteInfo<void> {
  const RoutesSkipRoute({List<PageRouteInfo>? children})
      : super(
          RoutesSkipRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoutesSkipRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PagesSplashScreen]
class RoutesSplashRoute extends PageRouteInfo<void> {
  const RoutesSplashRoute({List<PageRouteInfo>? children})
      : super(
          RoutesSplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoutesSplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
