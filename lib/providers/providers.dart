import 'package:boilerplate/repositories/data_repository.dart';
import 'package:boilerplate/services/cocktail_service.dart';
import 'package:boilerplate/services/network_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/configuration_service.dart';
import '../../services/connectivity_service.dart';

final configurationServiceProvider = Provider<ConfigurationService>((ref) {
  throw UnimplementedError();
});

final connectivityServiceProvider =
    Provider<ConnectivityServiceInterface>((ref) {
  return ConnectivityService();
});

final dataRepositoryProvider = Provider<DataRepositoryInterface>((ref) {
  final networkService = DioNetworkService();
  return DataRepository(networkService);
});

final cocktailServiceProvider = Provider<CocktailServiceInterface>((ref) {
  final repository = ref.read(dataRepositoryProvider);
  return CocktailService(repository);
});
