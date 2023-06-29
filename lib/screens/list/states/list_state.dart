import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_state.freezed.dart';

@freezed
class ListState with _$ListState {
  const factory ListState.loading() = _ListStateLoading;
  const factory ListState.success({required List list}) = _ListStateSuccess;
  const factory ListState.failure(String error) = _ListStateFailure;
}
