import 'package:boilerplate/enums/cocktail_menu_type.dart';
import 'package:boilerplate/models/adapters.dart';

class ApiRoutes {
  static const domain = 'https://www.thecocktaildb.com';

  static final adapters = <Adapters>[
    Adapters(name: 'thecocktaildb', url: 'api/json/v1/1')
  ];

  static String geApiEndpointsForList(CocktailMenuType cocktailMenuType) {
    return '$domain/${adapters[0].url}/list.php?${cocktailMenuType.id}=list';
  }

  static String geApiEndpointsForFilter(
      CocktailMenuType cocktailMenuType, String filter) {
    return '$domain/${adapters[0].url}/filter.php?${cocktailMenuType.id}=$filter';
  }

  static String geApiEndpointsForLookup(
      CocktailMenuType cocktailMenuType, String id) {
    return '$domain/${adapters[0].url}/lookup.php?i=$id';
  }

  static String geApiEndpointsForName(
      CocktailMenuType cocktailMenuType, String name) {
    return '$domain/${adapters[0].url}/search.php?s=$name';
  }
}
