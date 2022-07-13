import 'package:boilerplate/classes/entities/alcohol.dart';
import 'package:boilerplate/classes/entities/category.dart';
import 'package:boilerplate/classes/entities/cocktail.dart';
import 'package:boilerplate/classes/entities/glass.dart';
import 'package:boilerplate/classes/entities/ingredient.dart';
import 'package:boilerplate/repositories/data_repository.dart';

abstract class CocktailServiceInterface {
  Future<List<Glass>> getTypeOfGlasses();
  Future<List<Category>> getCategories();
  Future<List<Ingredient>> getIngredients();
  Future<List<Alcohol>> getAlcoholic();
  Future<List<Cocktail>> getCocktails(String apiKey, String name);
  Future<Cocktail> getCocktailDetail(String id);
}

class CocktailService implements CocktailServiceInterface {
  final DataRepositoryInterface _dataRepository;

  CocktailService(this._dataRepository);

  @override
  Future<List<Glass>> getTypeOfGlasses() {
    return _dataRepository.getCocktailsGlasses();
  }

  @override
  Future<List<Category>> getCategories() {
    return _dataRepository.getCocktailsCategories();
  }

  @override
  Future<List<Ingredient>> getIngredients() {
    return _dataRepository.getCocktailsIngredients();
  }

  @override
  Future<List<Alcohol>> getAlcoholic() {
    return _dataRepository.getAlcohol();
  }

  @override
  Future<List<Cocktail>> getCocktails(String apiKey, String name) {
    return _dataRepository.getCocktails(apiKey, name);
  }

  @override
  Future<Cocktail> getCocktailDetail(String id) {
    return _dataRepository.getCocktailDetail(id);
  }
}
