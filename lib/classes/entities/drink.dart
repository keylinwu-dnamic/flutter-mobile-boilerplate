import 'package:freezed_annotation/freezed_annotation.dart';

part 'drink.g.dart';

@JsonSerializable()
class Drink {
  @JsonKey(name: 'strDrink')
  final String name;

  @JsonKey(name: 'strDrinkAlternate')
  final String? alternate;

  @JsonKey(name: 'idDrink')
  final String id;

  @JsonKey(name: 'strDrinkThumb')
  final String? img;

  @JsonKey(name: 'strGlass')
  final String? glass;

  @JsonKey(name: 'strCategory')
  final String? category;

  @JsonKey(name: 'strAlcoholic')
  final String? alcoholic;

  @JsonKey(name: 'strIngredient1')
  final String? ingredient1;

  @JsonKey(name: 'strIngredient2')
  final String? ingredient2;

  @JsonKey(name: 'strIngredient3')
  final String? ingredient3;

  @JsonKey(name: 'strIngredient4')
  final String? ingredient4;

  @JsonKey(name: 'strIngredient5')
  final String? ingredient5;

  @JsonKey(name: 'strIngredient6')
  final String? ingredient6;

  @JsonKey(name: 'strIngredient7')
  final String? ingredient7;

  @JsonKey(name: 'strIngredient8')
  final String? ingredient8;

  @JsonKey(name: 'strIngredient9')
  final String? ingredient9;

  @JsonKey(name: 'strIngredient10')
  final String? ingredient10;

  @JsonKey(name: 'strIngredient11')
  final String? ingredient11;

  @JsonKey(name: 'strIngredient12')
  final String? ingredient12;

  @JsonKey(name: 'strIngredient13')
  final String? ingredient13;

  @JsonKey(name: 'strIngredient14')
  final String? ingredient14;

  @JsonKey(name: 'strIngredient15')
  final String? ingredient15;

  @JsonKey(name: 'strInstructions')
  final String? instructions;

  @JsonKey(name: 'strMeasure1')
  final String? measure1;

  @JsonKey(name: 'strMeasure2')
  final String? measure2;

  @JsonKey(name: 'strMeasure3')
  final String? measure3;

  @JsonKey(name: 'strMeasure4')
  final String? measure4;

  @JsonKey(name: 'strMeasure5')
  final String? measure5;

  @JsonKey(name: 'strMeasure6')
  final String? measure6;

  @JsonKey(name: 'strMeasure7')
  final String? measure7;

  @JsonKey(name: 'strMeasure8')
  final String? measure8;

  @JsonKey(name: 'strMeasure9')
  final String? measure9;

  @JsonKey(name: 'strMeasure10')
  final String? measure10;

  @JsonKey(name: 'strMeasure11')
  final String? measure11;

  @JsonKey(name: 'strMeasure12')
  final String? measure12;

  @JsonKey(name: 'strMeasure13')
  final String? measure13;

  @JsonKey(name: 'strMeasure14')
  final String? measure14;

  @JsonKey(name: 'strMeasure15')
  final String? measure15;

  @JsonKey(name: 'strTags')
  final String? tags;

  @JsonKey(name: 'strIBA')
  final String? iba;

  Drink({
    required this.name,
    required this.id,
    required this.img,
    required this.glass,
    required this.instructions,
    required this.ingredient1,
    required this.ingredient2,
    required this.ingredient3,
    required this.ingredient4,
    required this.ingredient5,
    required this.ingredient6,
    required this.ingredient7,
    required this.ingredient8,
    required this.ingredient9,
    required this.ingredient10,
    required this.ingredient11,
    required this.ingredient12,
    required this.ingredient13,
    required this.ingredient14,
    required this.ingredient15,
    required this.measure1,
    required this.measure2,
    required this.measure3,
    required this.measure4,
    required this.measure5,
    required this.measure6,
    required this.measure7,
    required this.measure8,
    required this.measure9,
    required this.measure10,
    required this.measure11,
    required this.measure12,
    required this.measure13,
    required this.measure14,
    required this.measure15,
    required this.iba,
    required this.alternate,
    required this.alcoholic,
    required this.category,
    required this.tags,
  });

  factory Drink.fromJson(Map<String, dynamic> json) => _$DrinkFromJson(json);

  Map<String, dynamic> toJson() => _$DrinkToJson(this);

  List<String> get tagList => tags?.split(',') ?? [];

  List<Map<String, String?>> get ingredients => [
        if (ingredient1 != null)
          {
            'name': ingredient1,
            'measure': measure1 ?? '',
          },
        if (ingredient2 != null)
          {
            'name': ingredient2,
            'measure': measure2 ?? '',
          },
        if (ingredient3 != null)
          {
            'name': ingredient3,
            'measure': measure3 ?? '',
          },
        if (ingredient4 != null)
          {
            'name': ingredient4,
            'measure': measure4 ?? '',
          },
        if (ingredient5 != null)
          {
            'name': ingredient5,
            'measure': measure5 ?? '',
          },
        if (ingredient6 != null)
          {
            'name': ingredient6,
            'measure': measure6 ?? '',
          },
        if (ingredient7 != null)
          {
            'name': ingredient7,
            'measure': measure7 ?? '',
          },
        if (ingredient8 != null)
          {
            'name': ingredient8,
            'measure': measure8 ?? '',
          },
        if (ingredient9 != null)
          {
            'name': ingredient9,
            'measure': measure9 ?? '',
          },
        if (ingredient10 != null)
          {
            'name': ingredient10,
            'measure': measure10 ?? '',
          },
        if (ingredient11 != null)
          {
            'name': ingredient11,
            'measure': measure11 ?? '',
          },
        if (ingredient12 != null)
          {
            'name': ingredient12,
            'measure': measure12 ?? '',
          },
        if (ingredient13 != null)
          {
            'name': ingredient13,
            'measure': measure13 ?? '',
          },
        if (ingredient15 != null)
          {
            'name': ingredient15,
            'measure': measure15 ?? '',
          },
      ];
}
