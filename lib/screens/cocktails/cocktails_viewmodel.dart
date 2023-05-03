import 'package:boilerplate/screens/cocktails/state/cocktails_state.dart';
import 'package:boilerplate/services/cocktail_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CocktailsViewModel extends StateNotifier<CocktailsState> {
  final CocktailServiceInterface cocktailService;

  CocktailsViewModel(super.state, {required this.cocktailService});

  //output
  String get appBarTitle => 'Cocktails';

  //input
  Future<void> getCocktails(String name) async {
    state = const CocktailsState.loading();
    try {
      final result = await cocktailService.getCocktails(name);
      state = CocktailsState.success(cocktails: result);
    } catch (e) {
      state = CocktailsState.failure(e.toString());
    }
  }
}
