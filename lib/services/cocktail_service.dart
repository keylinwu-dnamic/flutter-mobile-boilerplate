import 'package:boilerplate/classes/entities/category.dart';
import 'package:boilerplate/classes/entities/glass.dart';
import 'package:boilerplate/classes/entities/ingredient.dart';
import 'package:boilerplate/repositories/data_repository.dart';

abstract class CocktailServiceInterface
{
  Future<List<Category>> getCocktailsCategories();
  Future<List<Glass>> getTypeOfGlasses();
  Future<List<Ingredient>> getIngredients();
}

class CocktailService implements CocktailServiceInterface
{
  final DataRepositoryInterface _dataRepository;

  CocktailService(this._dataRepository);

  @override
  Future<List<Category>> getCocktailsCategories()
  {
    return _dataRepository.getCocktailsCategories();
  }

  @override
  Future<List<Glass>> getTypeOfGlasses()
  {
    return _dataRepository.getCocktailsGlasses();
  }

  @override
  Future<List<Ingredient>> getIngredients()
  {
    return _dataRepository.getCocktailsIngredients();
  }
}
