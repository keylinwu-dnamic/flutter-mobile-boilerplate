import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/enums/cocktail_menu_type.dart';
import 'package:boilerplate/models/category_main_item.dart';
import 'package:boilerplate/screens/category_main_list/states/category_main_list_state.dart';
import 'package:boilerplate/services/cocktail_service.dart';

class CategoryMainListViewModel extends StateNotifier<CategoryMainListState> {
  final CocktailServiceInterface cocktailService;

  CategoryMainListViewModel(super.state, {required this.cocktailService});

  Future<void> getCategoryMainList(CocktailMenuType cocktailMenuType) async {
    state = const CategoryMainListState.loading();

    try {
      List<CategoryMainItem> result = <CategoryMainItem>[];

      switch (cocktailMenuType) {
        case CocktailMenuType.categories:
          result = await cocktailService.getCategory();
          break;
        case CocktailMenuType.typeOfGlass:
          result = await cocktailService.getTypeOfGlasses();
          break;
        case CocktailMenuType.ingredient:
          result = await cocktailService.getIngredients();
          break;
        case CocktailMenuType.alcoholic:
          result = await cocktailService.getAlcoholic();
          break;
        default:
      }

      state = CategoryMainListState.success(categoryMainItemList: result);
    } catch (e) {
      state = CategoryMainListState.failure(e.toString());
    }
  }
}
