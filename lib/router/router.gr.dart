// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../screens/cocktails_alcohol/cocktails_by_alcohol_page.dart' as _i6;
import '../screens/cocktails_category/cocktails_categories_page.dart' as _i3;
import '../screens/cocktails_ingredients/cocktails_by_ingredients_page.dart'
    as _i5;
import '../screens/cocktails_typeofglass/cocktails_by_typeofglass_page.dart'
    as _i4;
import '../screens/home/home_page.dart' as _i2;
import '../screens/search/search_page.dart' as _i7;
import '../screens/splash_screen/splash_screen_page.dart' as _i1;
import 'guards/auth_guard.dart' as _i10;

class AppRouter extends _i8.RootStackRouter {
  AppRouter(
      {_i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i10.AuthGuard authGuard;

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    CocktailsCategoriesRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.CocktailsCategoriesPage());
    },
    CocktailsByTypeOfGlassRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.CocktailsByTypeOfGlassPage());
    },
    CocktailsByIngredientsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.CocktailsByIngredientsPage());
    },
    CocktailsByAlcoholRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.CocktailsByAlcoholPage());
    },
    SearchRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SearchPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i8.RouteConfig(SplashRoute.name, path: '/splash'),
        _i8.RouteConfig(HomeRoute.name, path: '/home', guards: [authGuard]),
        _i8.RouteConfig(CocktailsCategoriesRoute.name,
            path: '/cocktails_category'),
        _i8.RouteConfig(CocktailsByTypeOfGlassRoute.name,
            path: '/cocktails_typeofglass'),
        _i8.RouteConfig(CocktailsByIngredientsRoute.name,
            path: '/cocktails_ingredients'),
        _i8.RouteConfig(CocktailsByAlcoholRoute.name,
            path: '/cocktails_alcohol'),
        _i8.RouteConfig(SearchRoute.name, path: '/search')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.CocktailsCategoriesPage]
class CocktailsCategoriesRoute extends _i8.PageRouteInfo<void> {
  const CocktailsCategoriesRoute()
      : super(CocktailsCategoriesRoute.name, path: '/cocktails_category');

  static const String name = 'CocktailsCategoriesRoute';
}

/// generated route for
/// [_i4.CocktailsByTypeOfGlassPage]
class CocktailsByTypeOfGlassRoute extends _i8.PageRouteInfo<void> {
  const CocktailsByTypeOfGlassRoute()
      : super(CocktailsByTypeOfGlassRoute.name, path: '/cocktails_typeofglass');

  static const String name = 'CocktailsByTypeOfGlassRoute';
}

/// generated route for
/// [_i5.CocktailsByIngredientsPage]
class CocktailsByIngredientsRoute extends _i8.PageRouteInfo<void> {
  const CocktailsByIngredientsRoute()
      : super(CocktailsByIngredientsRoute.name, path: '/cocktails_ingredients');

  static const String name = 'CocktailsByIngredientsRoute';
}

/// generated route for
/// [_i6.CocktailsByAlcoholPage]
class CocktailsByAlcoholRoute extends _i8.PageRouteInfo<void> {
  const CocktailsByAlcoholRoute()
      : super(CocktailsByAlcoholRoute.name, path: '/cocktails_alcohol');

  static const String name = 'CocktailsByAlcoholRoute';
}

/// generated route for
/// [_i7.SearchPage]
class SearchRoute extends _i8.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '/search');

  static const String name = 'SearchRoute';
}
