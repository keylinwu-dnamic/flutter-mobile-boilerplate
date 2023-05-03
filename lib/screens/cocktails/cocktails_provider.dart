import 'package:boilerplate/providers/providers.dart';
import 'package:boilerplate/screens/cocktails/cocktails_viewmodel.dart';
import 'package:boilerplate/screens/cocktails/state/cocktails_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cocktailsViewModelProvider =
    StateNotifierProvider.autoDispose<CocktailsViewModel, CocktailsState>(
  (ref) {
    final service = ref.read(cocktailServiceProvider);
    return CocktailsViewModel(
      const CocktailsState.loading(),
      cocktailService: service,
    );
  },
);
