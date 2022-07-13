import 'package:auto_route/auto_route.dart';
import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/router/router.gr.dart';

enum CocktailAppHomeMenuItems
{
  category,
  typeOfGlass,
  ingredient,
  alcoholic
}

extension HomeItemsExtension on CocktailAppHomeMenuItems
{
  String get name
  {
    switch (this)
    {
      case CocktailAppHomeMenuItems.category:
        return AppStrings.current.category;

      case CocktailAppHomeMenuItems.typeOfGlass:
        return AppStrings.current.typeOfGlass;

      case CocktailAppHomeMenuItems.ingredient:
        return AppStrings.current.ingredients;

      case CocktailAppHomeMenuItems.alcoholic:
        return AppStrings.current.alcoholOrNot;
    }
  }

  String get imageFileName
  {
    switch (this)
    {
      case CocktailAppHomeMenuItems.category:
        return Assets.homeScreenTileCategory;

      case CocktailAppHomeMenuItems.typeOfGlass:
        return Assets.homeScreenTileTypeOfGlass;

      case CocktailAppHomeMenuItems.ingredient:
        return Assets.homeScreenTileIngredient;

      case CocktailAppHomeMenuItems.alcoholic:
        return Assets.homeScreenTileAlcoholOrNot;
    }
  }

  PageRouteInfo get route
  {
    switch (this)
    {
      case CocktailAppHomeMenuItems.category:
        return const CategoriesListRoute();

      case CocktailAppHomeMenuItems.typeOfGlass:
        return const TypesOfGlassesListRoute();

      case CocktailAppHomeMenuItems.ingredient:
        return const IngredientsListRoute();

      case CocktailAppHomeMenuItems.alcoholic:
        return const AlcoholicsOrNotListRoute();
    }
  }
}
