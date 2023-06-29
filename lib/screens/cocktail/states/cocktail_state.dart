import 'dart:core';

import 'package:boilerplate/classes/entities/drink.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cocktail_state.freezed.dart';

@freezed
class CocktailState with _$CocktailState {
  const factory CocktailState.loading() = _CocktailStateLoading;
  const factory CocktailState.success({required Drink cocktail}) =
      _CocktailStateSuccess;
  const factory CocktailState.failure(String error) = _CocktailStateFailure;
}
