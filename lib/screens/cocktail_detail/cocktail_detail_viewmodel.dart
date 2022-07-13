import 'package:boilerplate/screens/cocktail_detail/state/cocktail_detail_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boilerplate/services/cocktail_service.dart';

class CocktailDetailViewModel extends StateNotifier<CocktailDetailState> {
  final CocktailServiceInterface cocktailService;

  CocktailDetailViewModel(super.state, {required this.cocktailService});

  Future<void> getCocktailDetail(String id) async {
    state = const CocktailDetailState.loading();
    try {
      final result = await cocktailService.getCocktailDetail(id);
      state = CocktailDetailState.success(cocktail: result);
    } catch (e) {
      state = CocktailDetailState.failure(e.toString());
    }
  }
}
