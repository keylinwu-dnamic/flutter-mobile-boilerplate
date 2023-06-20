import 'package:boilerplate/classes/entities/drink.dart';
import 'package:boilerplate/providers/providers.dart';
import 'package:boilerplate/screens/cocktail/states/cocktail_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cocktail_viewmodel.dart';

final cocktailProvider = StateProvider<Drink?>((ref) => null);

final cocktailViewModelProvider =
    StateNotifierProvider<CocktailViewModel, CocktailState>((ref) {
  final service = ref.read(cocktailServiceProvider);
  return CocktailViewModel(const CocktailState.loading(),
      cocktailService: service);
});
