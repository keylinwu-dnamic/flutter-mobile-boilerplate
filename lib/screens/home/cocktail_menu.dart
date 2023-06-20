enum CocktailMenu {
  categories(
    name: 'Category',
    img: 'assets/category.png',
    leftColor: false,
  ),
  typeOfGlass(
    name: 'Type of Glass',
    img: 'assets/glass.png',
    leftColor: false,
  ),
  ingredient(
    name: 'Ingredient',
    img: 'assets/ingredients.png',
    leftColor: false,
  ),
  alcoholic(
    name: 'Alcoholic/Non Alcoholic',
    img: 'assets/alcohol.png',
    leftColor: true,
  );

  final String name;
  final String img;
  final bool leftColor;

  const CocktailMenu({
    required this.name,
    required this.img,
    required this.leftColor,
  });
}
