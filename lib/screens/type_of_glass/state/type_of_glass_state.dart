import 'dart:core';

import 'package:boilerplate/classes/entities/glass.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_of_glass_state.freezed.dart';

@freezed
class TypeOfGlassState with _$TypeOfGlassState {
  const factory TypeOfGlassState.loading() = _TypeOfGlassStateLoading;
  const factory TypeOfGlassState.success({required List<Glass> listGlass}) =
      _TypeOfGlassStateSuccess;
  const factory TypeOfGlassState.failure(String error) =
      _TypeOfGlassStateFailure;
}
