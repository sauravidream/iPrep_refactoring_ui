// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../account/account_overview_page.dart' as _i6;
import '../courses/courses_overview/courses_overview_page.dart' as _i4;
import '../home/home_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash.dart' as _i1;
import '../wishlist/wishlist_overview_page.dart' as _i5;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
        fullscreenDialog: true,
      );
    },
    SignInRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignInPage(),
        fullscreenDialog: true,
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
        fullscreenDialog: true,
      );
    },
    CoursesOverviewRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.CoursesOverviewPage(),
        fullscreenDialog: true,
      );
    },
    WishlistOverviewRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.WishlistOverviewPage(),
        fullscreenDialog: true,
      );
    },
    AccountOverviewRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.AccountOverviewPage(),
        fullscreenDialog: true,
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        _i7.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
          children: [
            _i7.RouteConfig(
              CoursesOverviewRoute.name,
              path: 'courses-overview-page',
              parent: HomeRoute.name,
            ),
            _i7.RouteConfig(
              WishlistOverviewRoute.name,
              path: 'wishlist-overview-page',
              parent: HomeRoute.name,
            ),
            _i7.RouteConfig(
              AccountOverviewRoute.name,
              path: 'account-overview-page',
              parent: HomeRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i7.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/home-page',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.CoursesOverviewPage]
class CoursesOverviewRoute extends _i7.PageRouteInfo<void> {
  const CoursesOverviewRoute()
      : super(
          CoursesOverviewRoute.name,
          path: 'courses-overview-page',
        );

  static const String name = 'CoursesOverviewRoute';
}

/// generated route for
/// [_i5.WishlistOverviewPage]
class WishlistOverviewRoute extends _i7.PageRouteInfo<void> {
  const WishlistOverviewRoute()
      : super(
          WishlistOverviewRoute.name,
          path: 'wishlist-overview-page',
        );

  static const String name = 'WishlistOverviewRoute';
}

/// generated route for
/// [_i6.AccountOverviewPage]
class AccountOverviewRoute extends _i7.PageRouteInfo<void> {
  const AccountOverviewRoute()
      : super(
          AccountOverviewRoute.name,
          path: 'account-overview-page',
        );

  static const String name = 'AccountOverviewRoute';
}
