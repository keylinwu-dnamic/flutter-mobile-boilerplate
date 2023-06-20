//TODO: This should implement an APIOutput Interface.

import 'dart:developer';

import 'package:boilerplate/classes/entities/category.dart';
import 'package:boilerplate/classes/entities/drink.dart';
import 'package:boilerplate/classes/entities/glass.dart';
import 'package:boilerplate/classes/entities/ingredient.dart';
import 'package:boilerplate/classes/entities/filter.dart';
import 'package:boilerplate/services/network_service.dart';

abstract class DataRepositoryInterface {
  Future<List<Category>> getCocktailsCategories();
  Future<List<Glass>> getCocktailsGlasses();
  Future<List<Ingredient>> getCocktailsIngredients();
  Future<List<Filter>> getAlcoholicFilters();
  Future<List<Drink>> search({required String query});
  Future<List<Drink>> query({required String query, required String type});
  Future<List<Drink>> cocktailById({required String id});
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
          .map((ingredient) => Ingredient.fromJson(ingredient))
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
          .map((glass) => Glass.fromJson(glass))
          .toList();
      return glasses;
    } catch (e) {
      log(e.toString());
      return Future.error(e);
    }
  }

  @override
  Future<List<Filter>> getAlcoholicFilters() async {
    try {
      final result = await _networkService.getData(
        path: APIPathConstant.alcoholicFilterEndpoint,
      );
      List<Filter> filters = (result['drinks'] as List)
          .map((filter) => Filter.fromJson(filter))
          .toList();
      return filters;
    } catch (e) {
      log(e.toString());
      return Future.error(e);
    }
  }

  @override
  Future<List<Drink>> search({required String query}) async {
    try {
      final result = await _networkService.getData(
        path: APIPathConstant.searchEndpoint + query,
      );
      print(result);
      print(666666);
      if (result['drinks'] == null) return [];
      List<Drink> filters = (result['drinks'] as List)
          .map((drink) => Drink.fromJson(drink))
          .toList();
      return filters;
    } catch (e) {
      log(e.toString());
      return Future.error(e);
    }
  }

  @override
  Future<List<Drink>> query(
      {required String query, required String type}) async {
    try {
      final result = await _networkService.getData(
        path: '${APIPathConstant.queryEndpoint}$type=$query',
      );
      List<Drink> filters = (result['drinks'] as List)
          .map((drink) => Drink.fromJson(drink))
          .toList();
      return filters;
    } catch (e) {
      log(e.toString());
      return Future.error(e);
    }
  }

  @override
  Future<List<Drink>> cocktailById({
    required String id,
  }) async {
    try {
      final result = await _networkService.getData(
        path: '${APIPathConstant.cocktailEndpoint}$id',
      );
      List<Drink> cocktails = (result['drinks'] as List)
          .map((drink) => Drink.fromJson(drink))
          .toList();
      return cocktails;
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
  static const String alcoholicFilterEndpoint =
      'https://www.thecocktaildb.com/api/json/v1/1/list.php?a=list';
  static const String searchEndpoint =
      'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=';
  static const String queryEndpoint =
      'https://www.thecocktaildb.com/api/json/v1/1/filter.php?';
  static const String cocktailEndpoint =
      'https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=';
}
