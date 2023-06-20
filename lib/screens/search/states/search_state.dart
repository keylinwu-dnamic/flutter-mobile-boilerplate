import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.loading() = _SearchStateLoading;
  const factory SearchState.success({required List list, bool? noResults}) =
      _SearchStateSuccess;
  const factory SearchState.failure(String error) = _SearchStateFailure;
}
