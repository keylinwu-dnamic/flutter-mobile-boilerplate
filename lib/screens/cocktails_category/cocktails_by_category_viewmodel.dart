import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boilerplate/screens/cocktails_category/states/cocktails_by_category_state.dart';
import 'package:boilerplate/services/cocktail_service.dart';

class CocktailsByCategoryViewModel extends StateNotifier<CocktailsByCategoryState>
{
  final CocktailServiceInterface cocktailService;

  CocktailsByCategoryViewModel(super.state, {required this.cocktailService});

  Future<void> getCategoriesList() async
  {
    final cocktailsCategories = await cocktailService.getCocktailsCategories();

    state = CocktailsByCategoryState.success(categories: cocktailsCategories);
  }
}
