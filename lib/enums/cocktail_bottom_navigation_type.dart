import 'package:boilerplate/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:boilerplate/generated/l10n.dart';

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
        return const Icon(Icons.search_outlined);
      case CocktailBottomNavigationType.about:
        return const Icon(Icons.supervised_user_circle);
    }
  }

  PageRouteInfo get path {
    switch (this) {
      case CocktailBottomNavigationType.home:
        return const HomeRoute();
      case CocktailBottomNavigationType.search:
        return const SearchRoute();
      case CocktailBottomNavigationType.about:
        return const AboutRoute();
    }
  }
}
