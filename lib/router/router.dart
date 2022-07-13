import 'package:auto_route/annotations.dart';
import 'package:boilerplate/screens/cocktails_category/categories_list_page.dart';
import 'package:boilerplate/screens/cocktails_list_page/cocktails_list_page.dart';
import 'package:boilerplate/screens/cocktails_typeofglass/cocktails_by_typeofglass_page.dart';
import 'package:boilerplate/screens/cocktails_ingredients/cocktails_by_ingredients_page.dart';
import 'package:boilerplate/screens/cocktails_alcohol/cocktails_by_alcohol_page.dart';
import 'package:boilerplate/screens/search/search_page.dart';

import '../screens/home/home_page.dart';
import '../screens/splash_screen/splash_screen_page.dart';
import 'guards/auth_guard.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      path: '/splash',
      initial: true,
    ),
    AutoRoute(
      page: HomePage,
      path: '/home',
      guards: [AuthGuard],
    ),
    AutoRoute(
      page: CategoriesListPage,
      path: '/cocktails_category',
    ),
    AutoRoute(
      page: TypesOfGlassesListPage,
      path: '/cocktails_typeofglass',
    ),
    AutoRoute(
      page: IngredientsListPage,
      path: '/cocktails_ingredients',
    ),
    AutoRoute(
      page: AlcoholicsOrNotListPage,
      path: '/cocktails_alcohol',
    ),
    AutoRoute(
      page: CocktailsListPage,
      path: '/cocktails_list_page',
    ),
    AutoRoute(
      page: SearchPage,
      path: '/search',
    )
  ]
)
class $AppRouter {}
