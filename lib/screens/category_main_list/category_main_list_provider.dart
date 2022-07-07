import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/providers/providers.dart';

import 'package:boilerplate/screens/category_main_list/category_main_list_viewmodel.dart';
import 'package:boilerplate/screens/category_main_list/states/category_main_list_state.dart';

final categoryMainListViewModelProvider =
    StateNotifierProvider<CategoryMainListViewModel, CategoryMainListState>(
        (ref) {
  final service = ref.read(cocktailServiceProvider);
  return CategoryMainListViewModel(const CategoryMainListState.loading(),
      cocktailService: service);
});
