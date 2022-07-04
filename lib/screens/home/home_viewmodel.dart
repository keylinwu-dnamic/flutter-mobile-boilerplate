import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/enums/cocktail_menu_type.dart';
import 'package:boilerplate/screens/home/states/home_state.dart';
import 'package:boilerplate/services/cocktail_service.dart';

class HomeViewModel extends StateNotifier<HomeState> {
  final String title = 'Cocktails App';
  final List<CocktailMenuType> cocktailMenuTiles =
      CocktailMenuType.values.where((type) => type.visible).toList();
  final CocktailServiceInterface cocktailService;

  HomeViewModel(super.state, {required this.cocktailService});

  int _currentNavigationIndex = 0;
  int get currentNavigationIndex => _currentNavigationIndex;
  set currentNavigationIndex(int index) {
    _currentNavigationIndex = index;
    state = HomeState.success(currentNavigationIndex: _currentNavigationIndex);
  }

  CocktailMenuType currentCocktailMenuType = CocktailMenuType.none;

  Future<void> initialize() async {
    currentNavigationIndex = 0;
    currentCocktailMenuType = CocktailMenuType.none;
  }
}
