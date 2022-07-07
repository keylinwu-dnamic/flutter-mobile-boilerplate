import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:boilerplate/models/category_main_item.dart';

part 'category_main_list_state.freezed.dart';

@freezed
class CategoryMainListState with _$CategoryMainListState {
  const factory CategoryMainListState.loading() = _CategoryMainListStateLoading;
  const factory CategoryMainListState.success(
          {required List<CategoryMainItem> categoryMainItemList}) =
      _CategoryMainListStateSuccess;
  const factory CategoryMainListState.failure(String error) =
      _CategoryMainListStateFailure;
}
