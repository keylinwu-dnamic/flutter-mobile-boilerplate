import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.g.dart';

@JsonSerializable()
class Ingredient {
  @JsonKey(name: 'strIngredient1')
  final String name;

  Ingredient({required this.name});

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      Ingredient(name: json["strIngredient1"]);
  Map<String, dynamic> toJson() => {"strIngredient1": name};
}
