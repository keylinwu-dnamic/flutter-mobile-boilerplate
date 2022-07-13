import 'dart:core';

import 'package:boilerplate/classes/entities/cocktail.dart';
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
