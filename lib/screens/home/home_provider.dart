import 'package:boilerplate/providers/providers.dart';
import 'package:boilerplate/screens/home/home_viewmodel.dart';
import 'package:boilerplate/screens/home/states/home_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeViewModelProvider =
    StateNotifierProvider<HomeViewModel, HomeState>((ref) {
  final service = ref.read(cocktailServiceProvider);
  return HomeViewModel(const HomeState.loading(), cocktailService: service);
});
