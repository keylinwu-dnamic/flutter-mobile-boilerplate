import 'package:boilerplate/classes/entities/category.dart';
import 'package:boilerplate/classes/entities/drink.dart';
import 'package:boilerplate/classes/entities/filter.dart';
import 'package:boilerplate/classes/entities/glass.dart';
import 'package:boilerplate/classes/entities/ingredient.dart';
import 'package:boilerplate/repositories/data_repository.dart';

abstract class CocktailServiceInterface {
  Future<List<Glass>> getTypeOfGlasses();
  Future<List<Category>> getCategories();
  Future<List<Ingredient>> getIngredients();
  Future<List<Filter>> getFilters();
  Future<List<Drink>> search({required String query});
  Future<List<Drink>> filter({required String query, required String type});
  Future<List<Drink>> cocktailById({required String id});
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
  Future<List<Filter>> getFilters() {
    return _dataRepository.getAlcoholicFilters();
  }

  @override
  Future<List<Drink>> search({required String query}) =>
      _dataRepository.search(query: query);

  @override
  Future<List<Drink>> filter({required String query, required String type}) =>
      _dataRepository.query(query: query, type: type);

  @override
  Future<List<Drink>> cocktailById({required String id}) =>
      _dataRepository.cocktailById(id: id);
}
