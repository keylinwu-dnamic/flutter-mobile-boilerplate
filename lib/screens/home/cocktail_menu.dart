import 'package:auto_route/auto_route.dart';
import 'package:boilerplate/router/router.gr.dart';
import 'package:boilerplate/generated/l10n.dart';

enum CocktailMenu {
  categories,
  typeOfGlass,
  ingredient,
  alcoholic;
}

extension Name on CocktailMenu {
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
}

extension Path on CocktailMenu {
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
}
