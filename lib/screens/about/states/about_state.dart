import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_state.freezed.dart';

@freezed
class AboutState with _$AboutState {
  const factory AboutState.loading() = _AboutStateLoading;
  const factory AboutState.success() = _AboutStateSuccess;
  const factory AboutState.failure(String error) = _AboutStateFailure;
}
