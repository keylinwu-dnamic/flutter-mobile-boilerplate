// ignore: todo
//TODO: This should implement an APIOutput Interface.

import 'dart:developer';

import 'package:boilerplate/classes/entities/category.dart';
import 'package:boilerplate/classes/entities/glass.dart';
import 'package:boilerplate/classes/entities/ingredient.dart';
import 'package:boilerplate/services/network_service.dart';

abstract class DataRepositoryInterface {
  Future<List<Category>> getCocktailsCategories();
  Future<List<Glass>> getCocktailsGlasses();
  Future<List<Ingredient>> getCocktailsIngredients();
}

class DataRepository implements DataRepositoryInterface {
  final NetworkService _networkService;
  DataRepository(this._networkService);

  @override
  Future<List<Category>> getCocktailsCategories() async {
    try {
      final result = await _networkService.getData(
        path: APIPathConstant.categoriesEndpoint,
      );
      List<Category> categories = (result['drinks'] as List)
          .map((category) => Category.fromJson(category))
          .toList();
      return categories;
    } catch (e) {
      log('$e');
      return Future.error('$e');
    }
  }

  @override
  Future<List<Ingredient>> getCocktailsIngredients() async {
    try {
      final result = await _networkService.getData(
        path: APIPathConstant.ingredientsEndpoint,
      );

      List<Ingredient> ingredients = (result['drinks'] as List)
          .map((category) => Ingredient.fromJson(category))
          .toList();

      return ingredients;
    } catch (e) {
      log('$e');
      return Future.error('$e');
    }
  }

  @override
  Future<List<Glass>> getCocktailsGlasses() async {
    try {
      final result = await _networkService.getData(
        path: APIPathConstant.glassesEndpoint,
      );
      List<Glass> glasses = (result['drinks'] as List)
          .map((typeOfGlass) => Glass.fromJson(typeOfGlass))
          .toList();
      return glasses;
    } catch (e) {
      log(e.toString());
      return Future.error(e);
    }
  }
}

class APIPathConstant {
  static const String categoriesEndpoint =
      'https://www.thecocktaildb.com/api/json/v1/1/list.php?c=list';
  static const String glassesEndpoint =
      'https://www.thecocktaildb.com/api/json/v1/1/list.php?g=list';
  static const String ingredientsEndpoint =
      'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list';
}
