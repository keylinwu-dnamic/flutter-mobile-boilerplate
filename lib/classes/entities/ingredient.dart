import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:boilerplate/models/category_main_item.dart';

part 'ingredient.g.dart';

@JsonSerializable()
class Ingredient implements CategoryMainItem {
  @override
  @JsonKey(name: 'strIngredient1')
  final String name;

  Ingredient({required this.name});

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

  Map<String, dynamic> toJson() => _$IngredientToJson(this);
}
