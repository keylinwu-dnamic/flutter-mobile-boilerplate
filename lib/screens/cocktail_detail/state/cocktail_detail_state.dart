import 'dart:core';

import 'package:boilerplate/models/cocktail.dart';
import 'package:boilerplate/models/cocktail_ingredient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cocktail_detail_state.freezed.dart';

@freezed
class CocktailDetailState with _$CocktailDetailState {
  const factory CocktailDetailState.loading() = _CocktailDetailStateLoading;
  const factory CocktailDetailState.success({required Cocktail cocktail}) =
      _CocktailDetailStateSuccess;
  const factory CocktailDetailState.failure(String error) =
      _CocktailDetailStateFailure;
}

extension CocktailDetailStateUnionExtension on CocktailDetailState {
// Add examples

// when()
  String get cocktailName => when(
        loading: () => '',
        success: (cocktail) => cocktail.name,
        failure: (error) => '',
      );
//
// maybeWhen()
  String get image => maybeWhen(
        success: (cocktail) => cocktail.image,
        orElse: () => '',
      );

// whenOrNull()
  List<CocktailIngredient>? get ingredientsWhenOrNull => whenOrNull(
        success: (cocktail) => cocktail.ingredients,
      );

// map()
  List<CocktailIngredient>? get ingredientsMap => map(
        success: (value) => value.cocktail.ingredients,
        failure: (_) => [],
        loading: (_) => [],
      );

// maybeMap()
  List<CocktailIngredient> get ingredientsMaybeMap => maybeMap(
        success: (value) => value.cocktail.ingredients ?? [],
        orElse: () => [],
      );

// mapOrNull()
  List<CocktailIngredient>? get ingredientsMapOrNull =>
      mapOrNull(success: (value) => value.cocktail.ingredients);
}
