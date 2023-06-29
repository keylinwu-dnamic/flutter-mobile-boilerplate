import 'package:boilerplate/screens/home/cocktail_menu.dart';
import 'package:boilerplate/screens/home/states/home_state.dart';
import 'package:boilerplate/services/cocktail_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeViewModel extends StateNotifier<HomeState> {
  final String title = 'Cocktails App';
  final List<CocktailMenu> cocktailMenuTiles = CocktailMenu.values;
  final CocktailServiceInterface cocktailService;

  HomeViewModel(super.state, {required this.cocktailService});

  int _currentNavigationIndex = 0;
  int get currentNavigationIndex => _currentNavigationIndex;
  set currentNavigationIndex(int index) {
    _currentNavigationIndex = index;
    state = HomeState.success(currentNavigationIndex: _currentNavigationIndex);
  }

  Future<void> initialize() async {
    currentNavigationIndex = 0;
  }
}
