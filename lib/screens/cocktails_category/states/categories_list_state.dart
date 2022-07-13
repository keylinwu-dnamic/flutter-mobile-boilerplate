import 'dart:core';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boilerplate/classes/entities/category.dart';

part 'categories_list_state.freezed.dart';

@freezed
class CategoriesListState with _$CategoriesListState
{
  const factory CategoriesListState.loading() = _CategoriesListStateLoading;

  const factory CategoriesListState.success({required List<Category> categories}) = _CategoriesListStateSuccess;

  const factory CategoriesListState.failure(String error) = _CategoriesListStateFailure;
}
