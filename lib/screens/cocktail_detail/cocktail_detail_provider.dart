import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/providers/providers.dart';

import 'package:boilerplate/screens/cocktail_detail/cocktail_detail_viewmodel.dart';
import 'package:boilerplate/screens/cocktail_detail/states/cocktail_detail_state.dart';

final cocktailDetailViewModelProvider =
    StateNotifierProvider<CocktailDetailViewModel, CocktailDetailState>((ref) {
  final cocktailService = ref.read(cocktailServiceProvider);

  return CocktailDetailViewModel(
    const CocktailDetailState.loading(),
    cocktailService: cocktailService,
  );
});
