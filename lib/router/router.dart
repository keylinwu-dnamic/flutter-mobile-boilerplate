import 'package:auto_route/annotations.dart';
import 'package:boilerplate/screens/alcoholic/alcoholic_non_alcoholic_page.dart';
import 'package:boilerplate/screens/ingredients/ingredients_page.dart';
import 'package:boilerplate/screens/type_of_glass/type_of_glass_page.dart';

import '../screens/home/home_page.dart';
import '../screens/categories/categories_page.dart';
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
    MaterialRoute(
      page: CategoriesPage,
      path: '/categories',
    ),
    MaterialRoute(
      page: AlcoholicNonAlcoholicPage,
      path: '/alcoholicNonAlcoholic',
    ),
    MaterialRoute(
      page: IngredientsPage,
      path: '/ingredients',
    ),
    MaterialRoute(
      page: TypeOfGlassPage,
      path: '/typeOfGlass',
    )
  ],
)
class $AppRouter {}
