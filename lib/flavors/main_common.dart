import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/flavors/flavor.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/main.dart';
import 'package:boilerplate/providers/providers.dart';
import 'package:boilerplate/services/configuration_service.dart';

Future<void>? mainCommon(Flavor flavor) {
  return runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    // Init Intl library with the initial default language
    await AppStrings.load(AppStrings.delegate.supportedLocales.first);

    final configurationService =
        await ConfigurationService.create(flavor: flavor);

    final overrideProviders = [
      configurationServiceProvider.overrideWithValue(configurationService),
    ];

    runApp(
      ProviderScope(
        overrides: overrideProviders,
        child: const App(),
      ),
    );
  }, (Object error, StackTrace stack) {
    // ignore: todo
    // TODO: Implement crash reports
  });
}
