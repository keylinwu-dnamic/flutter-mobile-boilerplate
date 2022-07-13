import 'package:boilerplate/providers/providers.dart';
import 'package:boilerplate/screens/cocktails_category/categories_list_viewmodel.dart';
import 'package:boilerplate/screens/cocktails_category/states/categories_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoriesListViewModelProvider = StateNotifierProvider<CategoriesListViewModel, CategoriesListState>((ref)
{
  final cocktailService = ref.read(cocktailServiceProvider);

  return CategoriesListViewModel(const CategoriesListState.loading(), cocktailService: cocktailService);
});
