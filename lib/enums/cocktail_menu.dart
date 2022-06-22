import 'package:flutter/material.dart';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/generated/l10n.dart';

enum CocktailMenu { categories, typeOfGlass, ingredient, alcoholic }

extension CocktailMenuExtension on CocktailMenu {
  String get name {
    switch (this) {
      case CocktailMenu.categories:
        return AppStrings.current.category;
      case CocktailMenu.typeOfGlass:
        return AppStrings.current.typeOfGlass;
      case CocktailMenu.ingredient:
        return AppStrings.current.ingredients;
      case CocktailMenu.alcoholic:
        return AppStrings.current.alcoholOrNot;
      default:
        return '';
    }
  }

  AssetImage get image {
    switch (this) {
      case CocktailMenu.categories:
        return const AssetImage(Assets.cocktailsCategory);
      case CocktailMenu.typeOfGlass:
        return const AssetImage(Assets.cocktailsTypeOfGlass);
      case CocktailMenu.ingredient:
        return const AssetImage(Assets.cocktailsIngredients);
      case CocktailMenu.alcoholic:
        return const AssetImage(Assets.cocktailsAlcoholOrNot);
      default:
        return const AssetImage(Assets.cocktailsCategory);
    }
  }
}
