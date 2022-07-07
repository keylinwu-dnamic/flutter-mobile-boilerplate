// ignore: todo
//TODO: This should implement an APIOutput Interface.

import 'dart:developer';

import 'package:boilerplate/api/api_routes.dart';

import 'package:boilerplate/enums/cocktail_menu_type.dart';

import 'package:boilerplate/classes/entities/alcoholic.dart';
import 'package:boilerplate/classes/entities/category.dart';
import 'package:boilerplate/classes/entities/cocktail.dart';
import 'package:boilerplate/classes/entities/glass.dart';
import 'package:boilerplate/classes/entities/ingredient.dart';

import 'package:boilerplate/services/network_service.dart';

abstract class DataRepositoryInterface {
  Future<List<Category>> getCocktailsCategories();
  Future<List<Glass>> getCocktailsTypeOfGlasses();
  Future<List<Ingredient>> getCocktailsIngredients();
  Future<List<Alcoholic>> getCocktailsAlcoholicOrNot();
  Future<List<Cocktail>> getCocktails(
      CocktailMenuType cocktailMenuType, String filter);
}

class DataRepository implements DataRepositoryInterface {
  final NetworkService _networkService;
  DataRepository(this._networkService);

  @override
  Future<List<Category>> getCocktailsCategories() async {
    try {
      final result = await _networkService.getData(
        path: ApiRoutes.geApiEndpointsForList(CocktailMenuType.categories),
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
  Future<List<Glass>> getCocktailsTypeOfGlasses() async {
    try {
      final result = await _networkService.getData(
        path: ApiRoutes.geApiEndpointsForList(CocktailMenuType.typeOfGlass),
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

  @override
  Future<List<Ingredient>> getCocktailsIngredients() async {
    try {
      final result = await _networkService.getData(
        path: ApiRoutes.geApiEndpointsForList(CocktailMenuType.ingredient),
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
  Future<List<Alcoholic>> getCocktailsAlcoholicOrNot() async {
    try {
      final result = await _networkService.getData(
        path: ApiRoutes.geApiEndpointsForList(CocktailMenuType.alcoholic),
      );
      List<Alcoholic> alcoholic = (result['drinks'] as List)
          .map((alcoholicOrNot) => Alcoholic.fromJson(alcoholicOrNot))
          .toList();
      return alcoholic;
    } catch (e) {
      log(e.toString());
      return Future.error(e);
    }
  }

  @override
  Future<List<Cocktail>> getCocktails(
      CocktailMenuType cocktailMenuType, String filter) async {
    try {
      final result = await _networkService.getData(
        path: ApiRoutes.geApiEndpointsForFilter(cocktailMenuType, filter),
      );
      List<Cocktail> drinks = (result['drinks'] as List)
          .map((drink) => Cocktail.fromJson(drink))
          .toList();
      return drinks;
    } catch (e) {
      log(e.toString());
      return Future.error(e);
    }
  }
}
