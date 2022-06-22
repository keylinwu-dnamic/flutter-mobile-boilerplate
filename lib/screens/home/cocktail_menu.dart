enum CocktailMenu {
  categories(name: 'Category', path: 'categories'),
  typeOfGlass(name: 'Type of Glass', path: 'typeOfGlass'),
  ingredient(name: 'Ingredient', path: 'ingredients'),
  alcoholic(name: 'Alcoholic/Non Alcoholic', path: 'alcoholicNonAlcoholic');

  final String name;
  final String path;
  const CocktailMenu({required this.name, required this.path});
}
