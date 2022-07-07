import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:boilerplate/classes/entities/cocktail.dart';

part 'cocktail_list_state.freezed.dart';

@freezed
class CocktailListState with _$CocktailListState {
  const factory CocktailListState.loading() = _CocktailListStateLoading;
  const factory CocktailListState.success(
      {required List<Cocktail> cocktailsList}) = _CocktailListStateSuccess;
  const factory CocktailListState.failure(String error) =
      _CocktailListStateFailure;
}
