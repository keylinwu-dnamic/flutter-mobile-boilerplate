import 'package:boilerplate/providers/providers.dart';
import 'package:boilerplate/screens/ingredients/ingredients_viewmodel.dart';
import 'package:boilerplate/screens/ingredients/state/ingredients_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ingredientsViewModelProvider =
    StateNotifierProvider<IngredientsViewModel, IngredientsState>((ref) {
  final service = ref.read(cocktailServiceProvider);
  return IngredientsViewModel(const IngredientsState.loading(),
      cocktailService: service);
});
