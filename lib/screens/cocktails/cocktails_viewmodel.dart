import 'package:boilerplate/screens/cocktails/state/cocktails_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boilerplate/services/cocktail_service.dart';

class CocktailsViewModel extends StateNotifier<CocktailsState> {
  final CocktailServiceInterface cocktailService;

  CocktailsViewModel(super.state, {required this.cocktailService});

  Future<void> getCocktails(String apiKey, String name) async {
    state = const CocktailsState.loading();
    try {
      final result = await cocktailService.getCocktails(apiKey, name);
      state = CocktailsState.success(cocktails: result);
    } catch (e) {
      state = CocktailsState.failure(e.toString());
    }
  }
}
