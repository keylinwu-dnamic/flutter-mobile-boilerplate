import 'package:boilerplate/providers/providers.dart';
import 'package:boilerplate/screens/cocktail_detail/cocktail_detail_viewmodel.dart';
import 'package:boilerplate/screens/cocktail_detail/state/cocktail_detail_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cocktailDetailViewModelProvider =
    StateNotifierProvider<CocktailDetailViewModel, CocktailDetailState>(
  (ref) {
    final service = ref.read(cocktailServiceProvider);
    return CocktailDetailViewModel(
      const CocktailDetailState.loading(),
      cocktailService: service,
    );
  },
);
