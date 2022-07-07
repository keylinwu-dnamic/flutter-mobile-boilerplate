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

import '../screens/about/about_page.dart' as _i4;
import '../screens/category_main_list/category_main_list_page.dart' as _i5;
import '../screens/cocktail_list/cocktail_list_page.dart' as _i6;
import '../screens/home/home_page.dart' as _i2;
import '../screens/search/search_page.dart' as _i3;
import '../screens/splash_screen/splash_screen_page.dart' as _i1;
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
    SearchRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SearchPage());
    },
    AboutRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.AboutPage());
    },
    CategoryMainListRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.CategoryMainListPage());
    },
    CocktailListRoute.name: (routeData) {
      final args = routeData.argsAs<CocktailListRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.CocktailListPage(
              key: args.key, categoryItem: args.categoryItem));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i7.RouteConfig(SplashRoute.name, path: '/splash'),
        _i7.RouteConfig(HomeRoute.name, path: '/home', guards: [authGuard]),
        _i7.RouteConfig(SearchRoute.name, path: '/search'),
        _i7.RouteConfig(AboutRoute.name, path: '/about'),
        _i7.RouteConfig(CategoryMainListRoute.name,
            path: '/category-main-list'),
        _i7.RouteConfig(CocktailListRoute.name, path: '/cocktail-list')
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
/// [_i3.SearchPage]
class SearchRoute extends _i7.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '/search');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i4.AboutPage]
class AboutRoute extends _i7.PageRouteInfo<void> {
  const AboutRoute() : super(AboutRoute.name, path: '/about');

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i5.CategoryMainListPage]
class CategoryMainListRoute extends _i7.PageRouteInfo<void> {
  const CategoryMainListRoute()
      : super(CategoryMainListRoute.name, path: '/category-main-list');

  static const String name = 'CategoryMainListRoute';
}

/// generated route for
/// [_i6.CocktailListPage]
class CocktailListRoute extends _i7.PageRouteInfo<CocktailListRouteArgs> {
  CocktailListRoute({_i8.Key? key, required String categoryItem})
      : super(CocktailListRoute.name,
            path: '/cocktail-list',
            args: CocktailListRouteArgs(key: key, categoryItem: categoryItem));

  static const String name = 'CocktailListRoute';
}

class CocktailListRouteArgs {
  const CocktailListRouteArgs({this.key, required this.categoryItem});

  final _i8.Key? key;

  final String categoryItem;

  @override
  String toString() {
    return 'CocktailListRouteArgs{key: $key, categoryItem: $categoryItem}';
  }
}
