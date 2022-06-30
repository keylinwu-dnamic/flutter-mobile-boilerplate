import 'package:boilerplate/screens/home/cocktail_app_home_menu_items.dart';
import 'package:boilerplate/screens/home/states/home_state.dart';
import 'package:boilerplate/services/cocktail_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeViewModel extends StateNotifier<HomeState> {
  final String title = 'Cocktails App';
  final List<CocktailAppHomeMenuItems> cocktailMenuTiles = CocktailAppHomeMenuItems.values;
  final CocktailServiceInterface cocktailService;

  HomeViewModel(super.state, {required this.cocktailService});

  int _currentNavigationIndex = 0;
  int get currentNavigationIndex => _currentNavigationIndex;
  set currentNavigationIndex(int index) {
    _currentNavigationIndex = index;
    state = HomeState.success(currentNavigationIndex: _currentNavigationIndex);
  }

  Future<void> initialize() async {
    //TODO: Here we should add the first api call to prepare your views like this:
    // final glasses = await cocktailService.getTypeOfGlasses();
    // and assigned it thru success if the screen requires it.
    // another way: state = const HomeState.success(currentNavigationIndex);
    currentNavigationIndex = 0;
  }
}
