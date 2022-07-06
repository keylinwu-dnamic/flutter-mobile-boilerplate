import 'package:boilerplate/providers/providers.dart';
import 'package:boilerplate/screens/cocktails_category/cocktails_by_category_viewmodel.dart';
import 'package:boilerplate/screens/cocktails_category/states/cocktails_by_category_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cocktailsByCategoryViewModelProvider = StateNotifierProvider<CocktailsByCategoryViewModel, CocktailsByCategoryState>((ref)
{
  final cocktailService = ref.read(cocktailServiceProvider);

  return CocktailsByCategoryViewModel(const CocktailsByCategoryState.loading(), cocktailService: cocktailService);
});
