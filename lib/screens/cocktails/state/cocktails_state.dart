import 'dart:core';
import '../../../classes/entities/cocktail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cocktails_state.freezed.dart';

@freezed
class CocktailsState with _$CocktailsState {
  const factory CocktailsState.loading() = _CocktailsStateLoading;
  const factory CocktailsState.success({required List<Cocktail> cocktails}) =
      _CocktailsStateSuccess;
  const factory CocktailsState.failure(String error) = _CocktailsStateFailure;
}
