import 'package:boilerplate/screens/alcoholic/state/alcoholic_state.dart';
import 'package:boilerplate/services/cocktail_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AlcoholicViewModel extends StateNotifier<AlcoholicState> {
  final CocktailServiceInterface cocktailService;

  AlcoholicViewModel(super.state, {required this.cocktailService});

  Future<void> getAlcoholic() async {
    // state = const AlcoholicState.loading();
    // try {
    //   final result = await cocktailService.getCategories();
    //   state = AlcoholicState.success(alcoholicTypeList: result);
    // } catch (e) {
    //   state = AlcoholicState.failure(e.toString());
    // }
  }
}
