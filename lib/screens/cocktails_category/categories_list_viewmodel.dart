import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boilerplate/screens/cocktails_category/states/categories_list_state.dart';
import 'package:boilerplate/services/cocktail_service.dart';

class CategoriesListViewModel extends StateNotifier<CategoriesListState>
{
  final CocktailServiceInterface cocktailService;

  CategoriesListViewModel(super.state, {required this.cocktailService});

  Future<void> getCategoriesList() async
  {
    final cocktailsCategories = await cocktailService.getCocktailsCategories();

    state = CategoriesListState.success(categories: cocktailsCategories);
  }
}
