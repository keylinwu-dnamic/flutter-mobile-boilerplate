import 'package:boilerplate/styles/images.dart';

enum CocktailAppHomeMenuItems
{
  category(name: 'Category'),
  typeOfGlass(name: 'Type of glass'),
  ingredient(name: 'Ingredient'),
  alcoholic(name: 'Alcoholic (or not)');

  final String name;
  const CocktailAppHomeMenuItems({required this.name});
}

extension HomeItemsExt
  on CocktailAppHomeMenuItems
{
  String get imageFileName
  {
    switch (this)
    {
      case CocktailAppHomeMenuItems.category:
        return CocktailAppImages.homeScreenTileCategory;

      case CocktailAppHomeMenuItems.typeOfGlass:
        return CocktailAppImages.homeScreenTileTypeOfGlass;

      case CocktailAppHomeMenuItems.ingredient:
        return CocktailAppImages.homeScreenTileIngredient;

      case CocktailAppHomeMenuItems.alcoholic:
        return CocktailAppImages.homeScreenTileAlcoholOrNot;
    }
  }
}
