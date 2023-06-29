import 'package:boilerplate/classes/entities/drink.dart';
import 'package:boilerplate/screens/cocktail/states/cocktail_state.dart';
import 'package:boilerplate/services/cocktail_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CocktailViewModel<T> extends StateNotifier<CocktailState> {
  final CocktailServiceInterface cocktailService;
  CocktailViewModel(
    super.state, {
    required this.cocktailService,
  });

  set currentDrink(Drink cocktail) {
    state = CocktailState.success(cocktail: cocktail);
  }

  Future<void> initialize({required String id}) async {
    state = const CocktailState.loading();
    var data = await cocktailService.cocktailById(id: id);
    currentDrink = data.first;
  }
}
