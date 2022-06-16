enum CocktailMenu {
  categories(name: 'Category'),
  typeOfGlass(name: 'Type of Glass'),
  ingredient(name: 'Ingredient'),
  alcoholic(name: 'Alcoholic/Non Alcoholic');

  final String name;
  const CocktailMenu({required this.name});
}
