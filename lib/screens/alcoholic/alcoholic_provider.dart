import 'package:boilerplate/providers/providers.dart';
import 'package:boilerplate/screens/alcoholic/alcoholic_viewmodel.dart';
import 'package:boilerplate/screens/alcoholic/state/alcoholic_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final alcoholicViewModelProvider =
    StateNotifierProvider<AlcoholicViewModel, AlcoholicState>((ref) {
  final service = ref.read(cocktailServiceProvider);
  return AlcoholicViewModel(const AlcoholicState.loading(),
      cocktailService: service);
});
