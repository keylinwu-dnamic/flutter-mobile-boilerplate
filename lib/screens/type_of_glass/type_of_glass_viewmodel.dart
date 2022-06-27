import 'package:boilerplate/screens/type_of_glass/state/type_of_glass_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boilerplate/services/cocktail_service.dart';

class TypeOfGlassViewModel extends StateNotifier<TypeOfGlassState> {
  final CocktailServiceInterface cocktailService;

  TypeOfGlassViewModel(super.state, {required this.cocktailService});

  Future<void> getTypeOfGlass() async {
    state = const TypeOfGlassState.loading();
    try {
      final result = await cocktailService.getTypeOfGlasses();
      state = TypeOfGlassState.success(listGlass: result);
    } catch (e) {
      state = TypeOfGlassState.failure(e.toString());
    }
  }
}
