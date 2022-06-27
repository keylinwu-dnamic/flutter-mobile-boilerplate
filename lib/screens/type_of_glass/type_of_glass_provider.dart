import 'package:boilerplate/providers/providers.dart';
import 'package:boilerplate/screens/type_of_glass/type_of_glass_viewmodel.dart';
import 'package:boilerplate/screens/type_of_glass/state/type_of_glass_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final typeOfGlassViewModelProvider =
    StateNotifierProvider<TypeOfGlassViewModel, TypeOfGlassState>((ref) {
  final service = ref.read(cocktailServiceProvider);
  return TypeOfGlassViewModel(const TypeOfGlassState.loading(),
      cocktailService: service);
});
