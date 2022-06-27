import 'dart:core';

import 'package:boilerplate/classes/entities/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_state.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.loading() = _CategoriesStateLoading;
  const factory CategoriesState.success({required List<Category> categories}) =
      _CategoriesStateSuccess;
  const factory CategoriesState.failure(String error) = _CategoriesStateFailure;
}
