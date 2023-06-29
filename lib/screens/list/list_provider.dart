import 'package:boilerplate/providers/providers.dart';
import 'package:boilerplate/screens/list/list_viewmodel.dart';
import 'package:boilerplate/screens/list/states/list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final listViewModelProvider =
    StateNotifierProvider<ListViewModel, ListState>((ref) {
  final service = ref.read(cocktailServiceProvider);
  return ListViewModel(const ListState.loading(), cocktailService: service);
});
