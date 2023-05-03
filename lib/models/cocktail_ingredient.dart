import 'package:freezed_annotation/freezed_annotation.dart';

part 'cocktail_ingredient.g.dart';

@JsonSerializable()
class CocktailIngredient {
  final String name;
  final String measure;

  CocktailIngredient({required this.name, required this.measure});

  factory CocktailIngredient.fromJson(Map<String, dynamic> json) =>
      _$CocktailIngredientFromJson(json);

  Map<String, dynamic> toJson() => _$CocktailIngredientToJson(this);
}
