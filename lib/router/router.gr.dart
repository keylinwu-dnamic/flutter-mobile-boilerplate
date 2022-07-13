// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../screens/cocktails_alcohol/cocktails_by_alcohol_page.dart' as _i6;
import '../screens/cocktails_category/categories_list_page.dart' as _i3;
import '../screens/cocktails_ingredients/cocktails_by_ingredients_page.dart'
    as _i5;
import '../screens/cocktails_list_page/cocktails_list_page.dart' as _i7;
import '../screens/cocktails_typeofglass/cocktails_by_typeofglass_page.dart'
    as _i4;
import '../screens/home/home_page.dart' as _i2;
import '../screens/search/search_page.dart' as _i8;
import '../screens/splash_screen/splash_screen_page.dart' as _i1;
import 'guards/auth_guard.dart' as _i11;

class AppRouter extends _i9.RootStackRouter {
  AppRouter(
      {_i10.GlobalKey<_i10.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i11.AuthGuard authGuard;

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    CategoriesListRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.CategoriesListPage());
    },
    TypesOfGlassesListRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.TypesOfGlassesListPage());
    },
    IngredientsListRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.IngredientsListPage());
    },
    AlcoholicsOrNotListRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AlcoholicsOrNotListPage());
    },
    CocktailsListRoute.name: (routeData) {
      final args = routeData.argsAs<CocktailsListRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.CocktailsListPage(
              key: args.key, categoryName: args.categoryName));
    },
    SearchRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.SearchPage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i9.RouteConfig(SplashRoute.name, path: '/splash'),
        _i9.RouteConfig(HomeRoute.name, path: '/home', guards: [authGuard]),
        _i9.RouteConfig(CategoriesListRoute.name, path: '/cocktails_category'),
        _i9.RouteConfig(TypesOfGlassesListRoute.name,
            path: '/cocktails_typeofglass'),
        _i9.RouteConfig(IngredientsListRoute.name,
            path: '/cocktails_ingredients'),
        _i9.RouteConfig(AlcoholicsOrNotListRoute.name,
            path: '/cocktails_alcohol'),
        _i9.RouteConfig(CocktailsListRoute.name, path: '/cocktails_list_page'),
        _i9.RouteConfig(SearchRoute.name, path: '/search')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.CategoriesListPage]
class CategoriesListRoute extends _i9.PageRouteInfo<void> {
  const CategoriesListRoute()
      : super(CategoriesListRoute.name, path: '/cocktails_category');

  static const String name = 'CategoriesListRoute';
}

/// generated route for
/// [_i4.TypesOfGlassesListPage]
class TypesOfGlassesListRoute extends _i9.PageRouteInfo<void> {
  const TypesOfGlassesListRoute()
      : super(TypesOfGlassesListRoute.name, path: '/cocktails_typeofglass');

  static const String name = 'TypesOfGlassesListRoute';
}

/// generated route for
/// [_i5.IngredientsListPage]
class IngredientsListRoute extends _i9.PageRouteInfo<void> {
  const IngredientsListRoute()
      : super(IngredientsListRoute.name, path: '/cocktails_ingredients');

  static const String name = 'IngredientsListRoute';
}

/// generated route for
/// [_i6.AlcoholicsOrNotListPage]
class AlcoholicsOrNotListRoute extends _i9.PageRouteInfo<void> {
  const AlcoholicsOrNotListRoute()
      : super(AlcoholicsOrNotListRoute.name, path: '/cocktails_alcohol');

  static const String name = 'AlcoholicsOrNotListRoute';
}

/// generated route for
/// [_i7.CocktailsListPage]
class CocktailsListRoute extends _i9.PageRouteInfo<CocktailsListRouteArgs> {
  CocktailsListRoute({_i10.Key? key, required String categoryName})
      : super(CocktailsListRoute.name,
            path: '/cocktails_list_page',
            args: CocktailsListRouteArgs(key: key, categoryName: categoryName));

  static const String name = 'CocktailsListRoute';
}

class CocktailsListRouteArgs {
  const CocktailsListRouteArgs({this.key, required this.categoryName});

  final _i10.Key? key;

  final String categoryName;

  @override
  String toString() {
    return 'CocktailsListRouteArgs{key: $key, categoryName: $categoryName}';
  }
}

/// generated route for
/// [_i8.SearchPage]
class SearchRoute extends _i9.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '/search');

  static const String name = 'SearchRoute';
}
