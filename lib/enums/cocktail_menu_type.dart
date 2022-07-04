import 'package:flutter/material.dart';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/generated/l10n.dart';

enum CocktailMenuType { categories, typeOfGlass, ingredient, alcoholic, none }

extension CocktailMenuTypeExtension on CocktailMenuType {
  String get name {
    switch (this) {
      case CocktailMenuType.categories:
        return AppStrings.current.category;
      case CocktailMenuType.typeOfGlass:
        return AppStrings.current.typeOfGlass;
      case CocktailMenuType.ingredient:
        return AppStrings.current.ingredients;
      case CocktailMenuType.alcoholic:
        return AppStrings.current.alcoholOrNot;
      default:
        return '';
    }
  }

  AssetImage get image {
    switch (this) {
      case CocktailMenuType.categories:
        return const AssetImage(Assets.cocktailsCategory);
      case CocktailMenuType.typeOfGlass:
        return const AssetImage(Assets.cocktailsTypeOfGlass);
      case CocktailMenuType.ingredient:
        return const AssetImage(Assets.cocktailsIngredients);
      case CocktailMenuType.alcoholic:
        return const AssetImage(Assets.cocktailsAlcoholOrNot);
      default:
        return const AssetImage(Assets.cocktailsCategory);
    }
  }

  bool get visible {
    switch (this) {
      case CocktailMenuType.categories:
      case CocktailMenuType.typeOfGlass:
      case CocktailMenuType.ingredient:
      case CocktailMenuType.alcoholic:
        return true;
      default:
        return false;
    }
  }
}
