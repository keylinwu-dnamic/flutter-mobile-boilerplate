import 'package:auto_route/auto_route.dart';
import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/constants.dart';
import 'package:boilerplate/router/router.gr.dart';
import 'package:boilerplate/generated/l10n.dart';

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
        return Assets.categories;
      case CocktailMenu.ingredient:
        return Assets.ingredients;
      case CocktailMenu.typeOfGlass:
        return Assets.typeOfGlass;
      case CocktailMenu.alcoholic:
        return Assets.alcoholic;
    }
  }

  String get apiKey {
    switch (this) {
      case CocktailMenu.categories:
        return Constants.endpointCategoryKey;
      case CocktailMenu.ingredient:
        return Constants.endpointIngredientKey;
      case CocktailMenu.typeOfGlass:
        return Constants.endpointGlassKey;
      case CocktailMenu.alcoholic:
        return Constants.endpointAlcoholic;
    }
  }
}
