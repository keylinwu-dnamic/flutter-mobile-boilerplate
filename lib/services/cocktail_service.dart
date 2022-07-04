import 'package:boilerplate/classes/entities/alcoholic.dart';
import 'package:boilerplate/classes/entities/category.dart';
import 'package:boilerplate/classes/entities/glass.dart';
import 'package:boilerplate/classes/entities/ingredient.dart';

import 'package:boilerplate/repositories/data_repository.dart';

abstract class CocktailServiceInterface {
  Future<List<Category>> getCategory();
  Future<List<Glass>> getTypeOfGlasses();
  Future<List<Ingredient>> getIngredients();
  Future<List<Alcoholic>> getAlcoholic();
}

class CocktailService implements CocktailServiceInterface {
  final DataRepositoryInterface _dataRepository;

  CocktailService(this._dataRepository);

  @override
  Future<List<Category>> getCategory() {
    return _dataRepository.getCocktailsCategories();
  }

  @override
  Future<List<Glass>> getTypeOfGlasses() {
    return _dataRepository.getCocktailsTypeOfGlasses();
  }

  @override
  Future<List<Ingredient>> getIngredients() {
    return _dataRepository.getCocktailsIngredients();
  }

  @override
  Future<List<Alcoholic>> getAlcoholic() {
    return _dataRepository.getCocktailsAlcoholicOrNot();
  }
}
