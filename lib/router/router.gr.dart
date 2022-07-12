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

import '../screens/alcoholic/alcoholic_non_alcoholic_page.dart' as _i4;
import '../screens/categories/categories_page.dart' as _i3;
import '../screens/cocktails/cocktails_page.dart' as _i7;
import '../screens/home/home_page.dart' as _i2;
import '../screens/ingredients/ingredients_page.dart' as _i5;
import '../screens/splash_screen/splash_screen_page.dart' as _i1;
import '../screens/type_of_glass/type_of_glass_page.dart' as _i6;
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
    CategoriesRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.CategoriesPage());
    },
    AlcoholicNonAlcoholicRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.AlcoholicNonAlcoholicPage());
    },
    IngredientsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.IngredientsPage());
    },
    TypeOfGlassRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.TypeOfGlassPage());
    },
    CocktailsRoute.name: (routeData) {
      final args = routeData.argsAs<CocktailsRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.CocktailsPage(
              key: args.key, apiKey: args.apiKey, name: args.name));
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i8.RouteConfig(SplashRoute.name, path: '/splash'),
        _i8.RouteConfig(HomeRoute.name, path: '/home', guards: [authGuard]),
        _i8.RouteConfig(CategoriesRoute.name, path: '/categories'),
        _i8.RouteConfig(AlcoholicNonAlcoholicRoute.name,
            path: '/alcoholicNonAlcoholic'),
        _i8.RouteConfig(IngredientsRoute.name, path: '/ingredients'),
        _i8.RouteConfig(TypeOfGlassRoute.name, path: '/typeOfGlass'),
        _i8.RouteConfig(CocktailsRoute.name, path: '/cocktails')
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
/// [_i3.CategoriesPage]
class CategoriesRoute extends _i8.PageRouteInfo<void> {
  const CategoriesRoute() : super(CategoriesRoute.name, path: '/categories');

  static const String name = 'CategoriesRoute';
}

/// generated route for
/// [_i4.AlcoholicNonAlcoholicPage]
class AlcoholicNonAlcoholicRoute extends _i8.PageRouteInfo<void> {
  const AlcoholicNonAlcoholicRoute()
      : super(AlcoholicNonAlcoholicRoute.name, path: '/alcoholicNonAlcoholic');

  static const String name = 'AlcoholicNonAlcoholicRoute';
}

/// generated route for
/// [_i5.IngredientsPage]
class IngredientsRoute extends _i8.PageRouteInfo<void> {
  const IngredientsRoute() : super(IngredientsRoute.name, path: '/ingredients');

  static const String name = 'IngredientsRoute';
}

/// generated route for
/// [_i6.TypeOfGlassPage]
class TypeOfGlassRoute extends _i8.PageRouteInfo<void> {
  const TypeOfGlassRoute() : super(TypeOfGlassRoute.name, path: '/typeOfGlass');

  static const String name = 'TypeOfGlassRoute';
}

/// generated route for
/// [_i7.CocktailsPage]
class CocktailsRoute extends _i8.PageRouteInfo<CocktailsRouteArgs> {
  CocktailsRoute({_i9.Key? key, required String apiKey, required String name})
      : super(CocktailsRoute.name,
            path: '/cocktails',
            args: CocktailsRouteArgs(key: key, apiKey: apiKey, name: name));

  static const String name = 'CocktailsRoute';
}

class CocktailsRouteArgs {
  const CocktailsRouteArgs(
      {this.key, required this.apiKey, required this.name});

  final _i9.Key? key;

  final String apiKey;

  final String name;

  @override
  String toString() {
    return 'CocktailsRouteArgs{key: $key, apiKey: $apiKey, name: $name}';
  }
}
