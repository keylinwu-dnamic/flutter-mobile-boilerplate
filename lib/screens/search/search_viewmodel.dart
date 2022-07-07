import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/services/cocktail_service.dart';
import 'package:boilerplate/screens/search/states/search_state.dart';

class SearchViewModel extends StateNotifier<SearchState> {
  final CocktailServiceInterface cocktailService;

  SearchViewModel(super.state, {required this.cocktailService});
}
