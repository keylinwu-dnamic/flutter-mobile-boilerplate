import 'dart:core';

import 'package:boilerplate/classes/models/cocktail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _HomeStateLoading;
  const factory HomeState.success(List<Cocktail> cocktails) = _HomeStateSuccess;
  const factory HomeState.failure(String error) = _HomeStateFailure;
}
