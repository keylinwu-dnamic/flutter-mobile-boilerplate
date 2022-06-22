import 'package:boilerplate/classes/entities/category.dart';
import 'package:boilerplate/classes/entities/glass.dart';
import 'package:boilerplate/repositories/data_repository.dart';

abstract class CocktailServiceInterface {
  Future<List<Glass>> getTypeOfGlasses();
  Future<List<Category>> getCategories();
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
}
