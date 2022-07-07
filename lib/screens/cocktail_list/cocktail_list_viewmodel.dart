import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/classes/entities/cocktail.dart';
import 'package:boilerplate/enums/cocktail_menu_type.dart';

import 'package:boilerplate/screens/cocktail_list/states/cocktail_list_state.dart';
import 'package:boilerplate/services/cocktail_service.dart';

class CocktailListViewModel extends StateNotifier<CocktailListState> {
  final CocktailServiceInterface cocktailService;

  CocktailListViewModel(super.state, {required this.cocktailService});

  Future<void> getCocktailsList(
      CocktailMenuType cocktailMenuType, String filter) async {
    state = const CocktailListState.loading();

    try {
      List<Cocktail> result =
          await cocktailService.getCocktails(cocktailMenuType, filter);

      state = CocktailListState.success(cocktailsList: result);
    } catch (e) {
      state = CocktailListState.failure(e.toString());
    }
  }
}
