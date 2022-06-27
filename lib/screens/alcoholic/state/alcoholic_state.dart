import 'dart:core';

import 'package:boilerplate/classes/entities/alcohol.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'alcoholic_state.freezed.dart';

@freezed
class AlcoholicState with _$AlcoholicState {
  const factory AlcoholicState.loading() = _AlcoholicStateLoading;
  const factory AlcoholicState.success(
      {required List<Alcohol> alcoholicTypeList}) = _AlcoholicStateSuccess;
  const factory AlcoholicState.failure(String error) = _AlcoholicStateFailure;
}
