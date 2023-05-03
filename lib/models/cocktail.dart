import 'package:boilerplate/models/cocktail_ingredient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cocktail.g.dart';

@JsonSerializable()
class Cocktail {
  @JsonKey(name: 'strDrink')
  final String name;

  @JsonKey(name: 'strDrinkThumb')
  final String image;

  @JsonKey(name: 'idDrink')
  final String id;

  @JsonKey(name: 'strTags')
  final String tag;

  @JsonKey(name: 'strCategory')
  final String category;

  @JsonKey(name: 'strGlass')
  final String glass;

  @JsonKey(name: 'strInstructions')
  final String instructions;

  List<CocktailIngredient>? ingredients;

  Cocktail({
    required this.name,
    required this.image,
    required this.id,
    this.tag = 'No tag',
    this.category = 'No category',
    this.glass = 'No type of glass',
    this.instructions = 'No instructions',
    this.ingredients,
  });

  factory Cocktail.fromJson(Map<String, dynamic> json) =>
      _$CocktailFromJson(json);

  Map<String, dynamic> toJson() => _$CocktailToJson(this);
}
