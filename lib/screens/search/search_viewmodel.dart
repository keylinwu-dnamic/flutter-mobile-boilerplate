import 'package:boilerplate/classes/entities/glass.dart';
import 'package:boilerplate/repositories/data_repository.dart';
import 'package:boilerplate/screens/home/cocktail_menu.dart';
import 'package:boilerplate/screens/search/states/search_state.dart';
import 'package:boilerplate/services/cocktail_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchViewModel<T> extends StateNotifier<SearchState> {
  final CocktailServiceInterface cocktailService;
  bool _navigationView = false;
  String title = '';
  SearchViewModel(
    super.state, {
    required this.cocktailService,
  });

  set currentList(List list) {
    state = SearchState.success(list: list, noResults: list.isEmpty);
  }

  set navigationView(bool viewMode) {
    _navigationView = viewMode;
  }

  bool get hideItemsOnView => _navigationView;

  Future<void> initialize({dynamic query}) async {
    state = const SearchState.success(list: []);
    if (query != null && query != '') {
      state = const SearchState.loading();
      navigationView = true;
      title = query.name;
      switch (query.runtimeType.toString()) {
        case 'Category':
          currentList =
              await cocktailService.filter(query: query.name, type: 'c');
          break;
        case 'Glass':
          currentList =
              await cocktailService.filter(query: query.name, type: 'g');
          break;
        case 'Ingredient':
          currentList =
              await cocktailService.filter(query: query.name, type: 'i');
          break;
        case 'Filter':
          currentList =
              await cocktailService.filter(query: query.name, type: 'a');
          break;
      }
    } else {
      navigationView = false;
    }
  }

  Future<void> search({required String query}) async {
    state = const SearchState.loading();
    currentList = await cocktailService.search(query: query);
  }
}
