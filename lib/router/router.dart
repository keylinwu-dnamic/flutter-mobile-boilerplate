import 'package:auto_route/annotations.dart';

import 'package:boilerplate/router/guards/auth_guard.dart';

import 'package:boilerplate/screens/about/about_page.dart';
import 'package:boilerplate/screens/category_main_list/category_main_list_page.dart';
import 'package:boilerplate/screens/home/home_page.dart';
import 'package:boilerplate/screens/search/search_page.dart';
import 'package:boilerplate/screens/splash_screen/splash_screen_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      path: '/splash',
      initial: true,
    ),
    AutoRoute(page: HomePage, path: '/home', guards: [AuthGuard]),
    AutoRoute(
      page: SearchPage,
      path: '/search',
    ),
    AutoRoute(
      page: AboutPage,
      path: '/about',
    ),
    AutoRoute(
      page: CategoryMainListPage,
      path: '/category-main-list',
    ),
  ],
)
class $AppRouter {}
