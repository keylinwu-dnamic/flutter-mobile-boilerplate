// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../screens/home/home_page.dart' as _i2;
import '../screens/splash_screen/splash_screen_page.dart' as _i1;
import 'guards/auth_guard.dart' as _i5;

class AppRouter extends _i3.RootStackRouter {
  AppRouter(
      {_i4.GlobalKey<_i4.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i5.AuthGuard authGuard;

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.HomePage(key: args.key, title: args.title));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i3.RouteConfig(SplashRoute.name, path: '/splash'),
        _i3.RouteConfig(HomeRoute.name, path: '/home', guards: [authGuard])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i3.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i3.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i4.Key? key, required String title})
      : super(HomeRoute.name,
            path: '/home', args: HomeRouteArgs(key: key, title: title));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key, required this.title});

  final _i4.Key? key;

  final String title;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, title: $title}';
  }
}
