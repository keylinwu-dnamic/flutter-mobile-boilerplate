import 'package:boilerplate/models/category.dart';
import 'package:boilerplate/models/cocktail.dart';
import 'package:boilerplate/repositories/data_repository.dart';

abstract class CocktailServiceInterface {
  Future<List<Category>> getCategories();
  Future<List<Cocktail>> getCocktails(String name);
  Future<Cocktail> getCocktailDetail(String id);
}

class CocktailService implements CocktailServiceInterface {
  final CocktailRepositoryInterface _dataRepository;

  CocktailService(this._dataRepository);

  @override
  Future<List<Category>> getCategories() {
    return _dataRepository.getCocktailsCategories();
  }

  @override
  Future<List<Cocktail>> getCocktails(String name) {
    return _dataRepository.getCocktails(name);
  }

  @override
  Future<Cocktail> getCocktailDetail(String id) {
    return _dataRepository.getCocktailDetail(id);
  }
}
