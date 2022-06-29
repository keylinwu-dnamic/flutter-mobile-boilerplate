import 'package:boilerplate/screens/ingredients/state/ingredients_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boilerplate/services/cocktail_service.dart';

class IngredientsViewModel extends StateNotifier<IngredientsState> {
  final CocktailServiceInterface cocktailService;

  IngredientsViewModel(super.state, {required this.cocktailService});

  Future<void> getIngredients() async {
    state = const IngredientsState.loading();
    try {
      final result = await cocktailService.getIngredients();
      state = IngredientsState.success(ingredients: result);
    } catch (e) {
      state = IngredientsState.failure(e.toString());
    }
  }
}
