import 'package:boilerplate/enums/cocktail_menu_type.dart';
import 'package:boilerplate/models/adapters.dart';

class ApiRoutes {
  static const domain = 'https://www.thecocktaildb.com';

  static final adapters = <Adapters>[
    Adapters(name: 'thecocktaildb', url: 'api/json/v1/1')
  ];

  static String geApiRouteEndpoints(CocktailMenuType cocktailMenuType) {
    switch (cocktailMenuType) {
      case CocktailMenuType.alcoholic:
        return '$domain/${adapters[0].url}/list.php?a=list';
      case CocktailMenuType.categories:
        return '$domain/${adapters[0].url}/list.php?c=list';
      case CocktailMenuType.ingredient:
        return '$domain/${adapters[0].url}/list.php?i=list';
      case CocktailMenuType.typeOfGlass:
        return '$domain/${adapters[0].url}/list.php?g=list';
      case CocktailMenuType.none:
        return '';
    }
  }
}
