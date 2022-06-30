import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:boilerplate/flavors/flavor.dart';

class ConfigurationService {
  static late Map<String, dynamic> _config;
  late Flavor _flavor;
  Flavor? get flavor => _flavor;

  ConfigurationService._(Map<String, dynamic> config, Flavor flavor) {
    _config = config;
    _flavor = flavor;
  }

  static String _getConfigFilePath(Flavor flavor) {
    switch (flavor) {
      case Flavor.dev:
        return 'config/app_config_dev.json';
      case Flavor.staging:
        return 'config/app_config_staging.json';
      case Flavor.preprod:
        return 'config/app_config_preprod.json';
      case Flavor.prod:
      default:
        return 'config/app_config_prod.json';
    }
  }

  static Future<ConfigurationService> create({required Flavor flavor}) async {
    try {
      final configFilePath = _getConfigFilePath(flavor);
      final configString = await rootBundle.loadString(configFilePath);
      final config = json.decode(configString) as Map<String, dynamic>;

      return ConfigurationService._(config, flavor);
    } on Exception catch (_) {
      throw Exception(
          'Missing config files, you have to include the flavors JSON config files inside a directory called /config at the root of the project');
    }
  }

  String get amplitudeToken => _config['amplitudeToken'];
  String get oktaAudience => _config['oktaAudience'];
  String get oktaClientId => _config['oktaClientId'];
  String get oktaEndSessionRedirectUri => _config['oktaEndSessionRedirectUri'];
  String get oktaAndroidEndSessionRedirectUri =>
      _config['oktaAndroidEndSessionRedirectUri'];
  String get oktaRedirectUrl => _config['oktaRedirectUrl'];
  String get oktaDomain => _config['oktaDomain'];
  String get oktaIssuer => _config['oktaIssuer'];
  String get oktaDiscoveryUrl => 'https://$oktaDomain/oauth2/$oktaIssuer';
  String get keychainTeamIdentifier => _config['keychainTeamIdentifier'];
  String get androidAmpBundle => _config['androidAmpBundle'];
  String get iosAmpUrlScheme => _config['iosAmpUrlScheme'];
  String get ampAppleStoreUrl => _config['ampAppleStoreUrl'];
  String get privacyPolicyUrl => _config['privacyPolicyUrl'];
  String get termsOfUseUrl => _config['termsOfUseUrl'];
  String get webServiceHost => _config['webServiceHost'];
  String get imagesServiceHost => _config['imagesServiceHost'];
}
