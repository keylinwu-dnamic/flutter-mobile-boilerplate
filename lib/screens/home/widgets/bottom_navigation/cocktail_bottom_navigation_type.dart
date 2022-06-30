import 'package:boilerplate/generated/l10n.dart';
import 'package:flutter/material.dart';

enum CocktailBottomNavigationType {
  home,
  search,
  about,
}

extension CocktailBottomNavigationTypeExtension
    on CocktailBottomNavigationType {
  String get label {
    switch (this) {
      case CocktailBottomNavigationType.home:
        return AppStrings.current.home;
      case CocktailBottomNavigationType.search:
        return AppStrings.current.search;
      case CocktailBottomNavigationType.about:
        return AppStrings.current.about;
    }
  }

  Icon get icon {
    switch (this) {
      case CocktailBottomNavigationType.home:
        return const Icon(Icons.home_outlined);
      case CocktailBottomNavigationType.search:
        return const Icon(Icons.search);
      case CocktailBottomNavigationType.about:
        return const Icon(Icons.account_circle_outlined);
    }
  }
}
