// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../screens/alcoholic/alcoholic_non_alcoholic_page.dart' as _i4;
import '../screens/categories/categories_page.dart' as _i3;
import '../screens/home/home_page.dart' as _i2;
import '../screens/ingredients/ingredients_page.dart' as _i5;
import '../screens/splash_screen/splash_screen_page.dart' as _i1;
import '../screens/type_of_glass/type_of_glass.dart' as _i6;
import 'guards/auth_guard.dart' as _i9;

class AppRouter extends _i7.RootStackRouter {
  AppRouter(
      {_i8.GlobalKey<_i8.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i9.AuthGuard authGuard;

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    CategoriesRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.CategoriesPage());
    },
    AlcoholicNonAlcoholicRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.AlcoholicNonAlcoholicPage());
    },
    IngredientsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.IngredientsPage());
    },
    TypeOfGlassRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.TypeOfGlassPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i7.RouteConfig(SplashRoute.name, path: '/splash'),
        _i7.RouteConfig(HomeRoute.name, path: '/home', guards: [authGuard]),
        _i7.RouteConfig(CategoriesRoute.name, path: '/categories'),
        _i7.RouteConfig(AlcoholicNonAlcoholicRoute.name,
            path: '/alcoholicNonAlcoholic'),
        _i7.RouteConfig(IngredientsRoute.name, path: '/ingredients'),
        _i7.RouteConfig(TypeOfGlassRoute.name, path: '/typeOfGlass')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.CategoriesPage]
class CategoriesRoute extends _i7.PageRouteInfo<void> {
  const CategoriesRoute() : super(CategoriesRoute.name, path: '/categories');

  static const String name = 'CategoriesRoute';
}

/// generated route for
/// [_i4.AlcoholicNonAlcoholicPage]
class AlcoholicNonAlcoholicRoute extends _i7.PageRouteInfo<void> {
  const AlcoholicNonAlcoholicRoute()
      : super(AlcoholicNonAlcoholicRoute.name, path: '/alcoholicNonAlcoholic');

  static const String name = 'AlcoholicNonAlcoholicRoute';
}

/// generated route for
/// [_i5.IngredientsPage]
class IngredientsRoute extends _i7.PageRouteInfo<void> {
  const IngredientsRoute() : super(IngredientsRoute.name, path: '/ingredients');

  static const String name = 'IngredientsRoute';
}

/// generated route for
/// [_i6.TypeOfGlassPage]
class TypeOfGlassRoute extends _i7.PageRouteInfo<void> {
  const TypeOfGlassRoute() : super(TypeOfGlassRoute.name, path: '/typeOfGlass');

  static const String name = 'TypeOfGlassRoute';
}
