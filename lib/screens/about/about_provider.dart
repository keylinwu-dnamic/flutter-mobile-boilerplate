import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/providers/providers.dart';
import 'package:boilerplate/screens/about/about_viewmodel.dart';
import 'package:boilerplate/screens/about/states/about_state.dart';

final aboutViewModelProvider =
    StateNotifierProvider<AboutViewModel, AboutState>((ref) {
  final service = ref.read(cocktailServiceProvider);
  return AboutViewModel(const AboutState.loading(), cocktailService: service);
});
