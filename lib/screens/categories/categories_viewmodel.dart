import 'package:boilerplate/screens/categories/states/categories_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boilerplate/services/cocktail_service.dart';

class CategoriesViewModel extends StateNotifier<CategoriesState> {
  final CocktailServiceInterface cocktailService;

  CategoriesViewModel(super.state, {required this.cocktailService});

  Future<void> getCategories() async {
    state = const CategoriesState.loading();
    try {
      final result = await cocktailService.getCategories();
      state = CategoriesState.success(categories: result);
    } catch (e) {
      state = CategoriesState.failure(e.toString());
    }
  }
}
