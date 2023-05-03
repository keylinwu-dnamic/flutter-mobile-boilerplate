import 'dart:async';

import 'package:boilerplate/flavors/flavor.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void>? mainCommon(Flavor flavor) {
  return runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    // Init Intl library with the initial default language
    await AppStrings.load(AppStrings.delegate.supportedLocales.first);

    runApp(
      const ProviderScope(
        child: App(),
      ),
    );
  }, (Object error, StackTrace stack) {
    // TODO: Implement crash reports
  });
}
