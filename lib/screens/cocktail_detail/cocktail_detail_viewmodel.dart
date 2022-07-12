import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/classes/entities/cocktail_detail.dart';

import 'package:boilerplate/services/cocktail_service.dart';

import 'package:boilerplate/screens/cocktail_detail/states/cocktail_detail_state.dart';

class CocktailDetailViewModel extends StateNotifier<CocktailDetailState> {
  final CocktailServiceInterface cocktailService;

  CocktailDetailViewModel(
    super.state, {
    required this.cocktailService,
  });

  Future<void> getCocktailDetail(String id) async {
    state = const CocktailDetailState.loading();

    try {
      CocktailDetail result = await cocktailService.getCocktailDetail(id);

      state = CocktailDetailState.success(cocktailDetail: result);
    } catch (e) {
      state = CocktailDetailState.failure(e.toString());
    }
  }
}
