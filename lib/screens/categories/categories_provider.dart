import 'package:boilerplate/providers/providers.dart';
import 'package:boilerplate/screens/categories/categories_viewmodel.dart';
import 'package:boilerplate/screens/categories/states/categories_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoriesViewModelProvider =
    StateNotifierProvider<CategoriesViewModel, CategoriesState>((ref) {
  final service = ref.read(cocktailServiceProvider);
  return CategoriesViewModel(const CategoriesState.loading(),
      cocktailService: service);
});
