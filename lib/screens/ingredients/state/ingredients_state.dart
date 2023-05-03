import 'dart:core';

import 'package:boilerplate/models/ingredient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredients_state.freezed.dart';

@freezed
class IngredientsState with _$IngredientsState {
  const factory IngredientsState.loading() = _IngredientsStateLoading;
  const factory IngredientsState.success(
      {required List<Ingredient> ingredients}) = _IngredientsStateSuccess;
  const factory IngredientsState.failure(String error) =
      _IngredientsStateFailure;
}
