import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/providers/providers.dart';
import 'package:boilerplate/screens/search/search_viewmodel.dart';
import 'package:boilerplate/screens/search/states/search_state.dart';

final searchViewModelProvider =
    StateNotifierProvider<SearchViewModel, SearchState>((ref) {
  final service = ref.read(cocktailServiceProvider);
  return SearchViewModel(const SearchState.loading(), cocktailService: service);
});
