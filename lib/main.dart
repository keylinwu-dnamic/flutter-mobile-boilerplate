import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'classes/theme/cocktail_theme.dart';
import 'classes/locale/locale_configuration.dart';

import 'router/guards/auth_guard.dart';
import 'router/router.gr.dart';

class App extends ConsumerStatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();
}

class AppState extends ConsumerState<App> {
  late AppRouter _appRouter;
  late Locale _appLocale;

  @override
  void initState() {
    super.initState();

    _appRouter = AppRouter(authGuard: AuthGuard());

    _appLocale = LocaleConfiguration.supportedLocales.first;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  }

  Future<void> openAppLink(Uri uri) async {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        try {
          _appRouter.pushNamed(uri.path);
        } catch (err) {
          log('Error: $err');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        // ignore: todo
        // TODO: Real application name on OS task manager
        title: 'Mobile Boilerplate',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        localizationsDelegates: LocaleConfiguration.localizationsDelegates,
        supportedLocales: LocaleConfiguration.supportedLocales,
        locale: _appLocale,
        debugShowCheckedModeBanner: false,
        theme: CocktailTheme.lightTheme);
  }
}
