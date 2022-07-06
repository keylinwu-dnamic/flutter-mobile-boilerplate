import 'dart:core';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boilerplate/classes/entities/category.dart';

part 'cocktails_by_category_state.freezed.dart';

@freezed
class CocktailsByCategoryState with _$CocktailsByCategoryState
{
  const factory CocktailsByCategoryState.loading() = _CocktailsByCategoryStateLoading;

  const factory CocktailsByCategoryState.success({required List<Category> categories}) = _CocktailsByCategoryStateSuccess;

  const factory CocktailsByCategoryState.failure(String error) = _CocktailsByCategoryStateFailure;
}
