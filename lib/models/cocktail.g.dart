// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cocktail _$CocktailFromJson(Map<String, dynamic> json) => Cocktail(
      name: json['strDrink'] as String,
      image: json['strDrinkThumb'] as String,
      id: json['idDrink'] as String,
      tag: json['strTags'] as String? ?? 'No tag',
      category: json['strCategory'] as String? ?? 'No category',
      glass: json['strGlass'] as String? ?? 'No type of glass',
      instructions: json['strInstructions'] as String? ?? 'No instructions',
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => CocktailIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CocktailToJson(Cocktail instance) => <String, dynamic>{
      'strDrink': instance.name,
      'strDrinkThumb': instance.image,
      'idDrink': instance.id,
      'strTags': instance.tag,
      'strCategory': instance.category,
      'strGlass': instance.glass,
      'strInstructions': instance.instructions,
      'ingredients': instance.ingredients,
    };
