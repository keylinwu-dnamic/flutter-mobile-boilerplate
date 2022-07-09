import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:boilerplate/classes/entities/cocktail_detail.dart';

part 'cocktail_detail_state.freezed.dart';

@freezed
class CocktailDetailState with _$CocktailDetailState {
  const factory CocktailDetailState.loading() = _CocktailDetailStateLoading;
  const factory CocktailDetailState.success(
      {required CocktailDetail cocktailDetail}) = _CocktailDetailStateSuccess;
  const factory CocktailDetailState.failure(String error) =
      _CocktailDetailStateFailure;
}
