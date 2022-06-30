import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../generated/l10n.dart';

class LocaleConfiguration {
  static final supportedLocales = AppStrings.delegate.supportedLocales;

  static Map<Locale, String> get localizedLocales =>
      Map<Locale, String>.fromIterables([], localeNames);

  static final List<LocalizationsDelegate<Object>> localizationsDelegates = [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    AppStrings.delegate,
  ];

  static const List<String> localeNames = [
    // ignore: todo
    'English', //TODO: re-add when we have multi-language
    // 'Čeština',
    // 'Dansk',
    // 'Deutsch',
    // 'English (United Kingdom)',
    // 'Español',
    // 'Español (España)',
    // 'Suomi',
    // 'Français',
    // 'Italiano',
    // '日本語 (日本)',
    // '한국어',
    // 'Norsk bokmål',
    // 'Nederlands',
    // 'Polski',
    // 'Português (Brasil)',
    // 'Português (Portugal)',
    // 'Русский',
    // 'Svenska (Sverige)',
    // '中文 (中国)',
    // '中文 (中国香港特别行政区)',
    // '中文 (台湾)'
  ];
}

extension LocaleLanguages on LocaleConfiguration {
  static const Map<String, String> acceptedLanguagesIdentifiers = {
    // ignore: todo
    "en": "en-US", //TODO: re-add when we have multi-language
    // "en-GB": "en-GB",
    // "es-ES": "es-ES",
    // "es": "es-419",
    // "ja-JP": "ja-JP",
    // "de": "de-DE",
    // "ru": "ru-RU",
    // "fr": "fr-FR",
    // "it": "it-IT",
    // "zh-CN": "zh-CN",
    // "zh-TW": "zh-TW",
    // "zh-HK": "zh-HK",
    // "pt-PT": "pt-PT",
    // "pt-BR": "pt-BR",
    // "pl": "pl-PL",
    // "ko": "ko-KR",
    // "cs": "cs-CZ",
    // "da": "da-DK",
    // "nl": "nl-NL",
    // "fi": "fi-FI",
    // "nb": "nb-NO",
    // "sv-SE": "sv-SE",
  };
}
