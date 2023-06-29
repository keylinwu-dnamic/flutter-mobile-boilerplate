import 'package:boilerplate/screens/home/cocktail_menu.dart';
import 'package:boilerplate/screens/list/states/list_state.dart';
import 'package:boilerplate/services/cocktail_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListViewModel<T> extends StateNotifier<ListState> {
  final CocktailServiceInterface cocktailService;
  ListViewModel(
    super.state, {
    required this.cocktailService,
  });

  set currentList(List list) {
    state = ListState.success(list: list);
  }

  CocktailMenu? menu;

  Future<void> initialize() async {
    state = const ListState.loading();
    switch (menu!) {
      case CocktailMenu.categories:
        currentList = await cocktailService.getCategories();
        break;
      case CocktailMenu.typeOfGlass:
        currentList = await cocktailService.getTypeOfGlasses();
        break;
      case CocktailMenu.ingredient:
        currentList = await cocktailService.getIngredients();
        break;
      case CocktailMenu.alcoholic:
        currentList = await cocktailService.getFilters();
        break;
    }
  }
}
