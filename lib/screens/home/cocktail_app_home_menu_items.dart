import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/generated/l10n.dart';

enum CocktailAppHomeMenuItems
{
  category,
  typeOfGlass,
  ingredient,
  alcoholic
}

extension HomeItemsExtension
  on CocktailAppHomeMenuItems
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
}
