import 'package:boilerplate/classes/models/cocktail.dart';
import 'package:boilerplate/screens/home/states/home_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeViewModel extends StateNotifier<HomeState> {
  List<Cocktail> cocktails = [
    Cocktail('111', 'Mojito', 'Soy un mojito'),
    Cocktail('222', 'Long Island', 'Soy un Long Island'),
    Cocktail('333', 'Bizcocho', 'Soy un bizcocho'),
  ];

  final String title = 'My Flutter Boilerplate';

  HomeViewModel(super.state);

  Future<void> mockAPICall() async {
    await Future.delayed(const Duration(seconds: 5));
    state = HomeState.success(cocktails);
  }
}
