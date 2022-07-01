import 'package:auto_route/auto_route.dart';
import 'package:boilerplate/router/router.gr.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:flutter/material.dart';

enum CocktailMenu {
  categories,
  typeOfGlass,
  ingredient,
  alcoholic;
}

extension CocktailMenuExtension on CocktailMenu {
  String get name {
    switch (this) {
      case CocktailMenu.categories:
        return AppStrings.current.categories;
      case CocktailMenu.typeOfGlass:
        return AppStrings.current.typeOfGlass;
      case CocktailMenu.ingredient:
        return AppStrings.current.ingredients;
      case CocktailMenu.alcoholic:
        return AppStrings.current.alcoholicNonAlcoholic;
    }
  }

  PageRouteInfo get path {
    switch (this) {
      case CocktailMenu.categories:
        return const CategoriesRoute();
      case CocktailMenu.typeOfGlass:
        return const TypeOfGlassRoute();
      case CocktailMenu.ingredient:
        return const IngredientsRoute();
      case CocktailMenu.alcoholic:
        return const AlcoholicNonAlcoholicRoute();
    }
  }

  String get image {
    switch (this) {
      case CocktailMenu.categories:
        return 'assets/images/categories.png';
      case CocktailMenu.ingredient:
        return 'assets/images/ingredients.png';
      case CocktailMenu.typeOfGlass:
        return 'assets/images/typeOfGlass.png';
      case CocktailMenu.alcoholic:
        return 'assets/images/alcoholicOrNot.png';
    }
  }
}
