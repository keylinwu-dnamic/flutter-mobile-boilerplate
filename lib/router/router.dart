import 'package:auto_route/annotations.dart';

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
  ],
)
class $AppRouter {}
