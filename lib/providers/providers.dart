import 'package:boilerplate/repositories/data_repository.dart';
import 'package:boilerplate/services/cocktail_services.dart';
import 'package:boilerplate/services/network_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dataRepositoryProvider = Provider<CocktailRepositoryInterface>((ref) {
  final networkService = DioNetworkService();
  return DataRepository(networkService);
});

final cocktailServiceProvider = Provider<CocktailServiceInterface>((ref) {
  final repository = ref.read(dataRepositoryProvider);
  return CocktailService(repository);
});
