import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:boilerplate/services/cocktail_service.dart';
import 'package:boilerplate/screens/about/states/about_state.dart';

class AboutViewModel extends StateNotifier<AboutState> {
  final CocktailServiceInterface cocktailService;

  AboutViewModel(super.state, {required this.cocktailService});
}
