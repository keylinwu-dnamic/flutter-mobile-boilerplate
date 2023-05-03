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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../screens/alcoholic/alcoholic_non_alcoholic_page.dart' as _i4;
import '../screens/categories/categories_page.dart' as _i3;
import '../screens/cocktail_detail/cocktail_detail_page.dart' as _i8;
import '../screens/cocktails/cocktails_page.dart' as _i7;
import '../screens/home/home_page.dart' as _i2;
import '../screens/ingredients/ingredients_page.dart' as _i5;
import '../screens/splash_screen/splash_screen_page.dart' as _i1;
import '../screens/type_of_glass/type_of_glass_page.dart' as _i6;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    CategoriesRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.CategoriesPage(),
      );
    },
    AlcoholicNonAlcoholicRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AlcoholicNonAlcoholicPage(),
      );
    },
    IngredientsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.IngredientsPage(),
      );
    },
    TypeOfGlassRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.TypeOfGlassPage(),
      );
    },
    CocktailsRoute.name: (routeData) {
      final args = routeData.argsAs<CocktailsRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.CocktailsPage(
          key: args.key,
          category: args.category,
        ),
      );
    },
    CocktailDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CocktailDetailRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.CocktailDetailPage(
          key: args.key,
          id: args.id,
          name: args.name,
        ),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i9.RouteConfig(
          SplashRoute.name,
          path: '/splash',
        ),
        _i9.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i9.RouteConfig(
          CategoriesRoute.name,
          path: '/categories',
        ),
        _i9.RouteConfig(
          AlcoholicNonAlcoholicRoute.name,
          path: '/alcoholicNonAlcoholic',
        ),
        _i9.RouteConfig(
          IngredientsRoute.name,
          path: '/ingredients',
        ),
        _i9.RouteConfig(
          TypeOfGlassRoute.name,
          path: '/typeOfGlass',
        ),
        _i9.RouteConfig(
          CocktailsRoute.name,
          path: '/cocktails',
        ),
        _i9.RouteConfig(
          CocktailDetailRoute.name,
          path: '/detail',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.CategoriesPage]
class CategoriesRoute extends _i9.PageRouteInfo<void> {
  const CategoriesRoute()
      : super(
          CategoriesRoute.name,
          path: '/categories',
        );

  static const String name = 'CategoriesRoute';
}

/// generated route for
/// [_i4.AlcoholicNonAlcoholicPage]
class AlcoholicNonAlcoholicRoute extends _i9.PageRouteInfo<void> {
  const AlcoholicNonAlcoholicRoute()
      : super(
          AlcoholicNonAlcoholicRoute.name,
          path: '/alcoholicNonAlcoholic',
        );

  static const String name = 'AlcoholicNonAlcoholicRoute';
}

/// generated route for
/// [_i5.IngredientsPage]
class IngredientsRoute extends _i9.PageRouteInfo<void> {
  const IngredientsRoute()
      : super(
          IngredientsRoute.name,
          path: '/ingredients',
        );

  static const String name = 'IngredientsRoute';
}

/// generated route for
/// [_i6.TypeOfGlassPage]
class TypeOfGlassRoute extends _i9.PageRouteInfo<void> {
  const TypeOfGlassRoute()
      : super(
          TypeOfGlassRoute.name,
          path: '/typeOfGlass',
        );

  static const String name = 'TypeOfGlassRoute';
}

/// generated route for
/// [_i7.CocktailsPage]
class CocktailsRoute extends _i9.PageRouteInfo<CocktailsRouteArgs> {
  CocktailsRoute({
    _i10.Key? key,
    required String category,
  }) : super(
          CocktailsRoute.name,
          path: '/cocktails',
          args: CocktailsRouteArgs(
            key: key,
            category: category,
          ),
        );

  static const String name = 'CocktailsRoute';
}

class CocktailsRouteArgs {
  const CocktailsRouteArgs({
    this.key,
    required this.category,
  });

  final _i10.Key? key;

  final String category;

  @override
  String toString() {
    return 'CocktailsRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i8.CocktailDetailPage]
class CocktailDetailRoute extends _i9.PageRouteInfo<CocktailDetailRouteArgs> {
  CocktailDetailRoute({
    _i10.Key? key,
    required String id,
    required String name,
  }) : super(
          CocktailDetailRoute.name,
          path: '/detail',
          args: CocktailDetailRouteArgs(
            key: key,
            id: id,
            name: name,
          ),
        );

  static const String name = 'CocktailDetailRoute';
}

class CocktailDetailRouteArgs {
  const CocktailDetailRouteArgs({
    this.key,
    required this.id,
    required this.name,
  });

  final _i10.Key? key;

  final String id;

  final String name;

  @override
  String toString() {
    return 'CocktailDetailRouteArgs{key: $key, id: $id, name: $name}';
  }
}
