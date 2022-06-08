import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/configuration_service.dart';
import '../../services/connectivity_service.dart';

final configurationServiceProvider = Provider<ConfigurationService>((ref) {
  throw UnimplementedError();
});

final connectivityServiceProvider = Provider<ConnectivityService>((ref) {
  return ConnectivityService();
});
