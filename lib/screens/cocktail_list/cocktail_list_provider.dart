import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/providers/providers.dart';

import 'package:boilerplate/screens/cocktail_list/cocktail_list_viewmodel.dart';
import 'package:boilerplate/screens/cocktail_list/states/cocktail_list_state.dart';

final cocktailListViewModelProvider =
    StateNotifierProvider<CocktailListViewModel, CocktailListState>((ref) {
  final service = ref.read(cocktailServiceProvider);
  return CocktailListViewModel(const CocktailListState.loading(),
      cocktailService: service);
});
