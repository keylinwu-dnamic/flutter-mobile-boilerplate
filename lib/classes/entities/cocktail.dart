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

  Cocktail({required this.name, required this.image, required this.id});

  factory Cocktail.fromJson(Map<String, dynamic> json) =>
      _$CocktailFromJson(json);

  Map<String, dynamic> toJson() => _$CocktailToJson(this);
}
