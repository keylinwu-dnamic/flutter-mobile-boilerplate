// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int currentNavigationIndex) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int currentNavigationIndex)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int currentNavigationIndex)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateSuccess value) success,
    required TResult Function(_HomeStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStateLoading value)? loading,
    TResult? Function(_HomeStateSuccess value)? success,
    TResult? Function(_HomeStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateSuccess value)? success,
    TResult Function(_HomeStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HomeStateLoadingCopyWith<$Res> {
  factory _$$_HomeStateLoadingCopyWith(
          _$_HomeStateLoading value, $Res Function(_$_HomeStateLoading) then) =
      __$$_HomeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeStateLoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeStateLoading>
    implements _$$_HomeStateLoadingCopyWith<$Res> {
  __$$_HomeStateLoadingCopyWithImpl(
      _$_HomeStateLoading _value, $Res Function(_$_HomeStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeStateLoading implements _HomeStateLoading {
  const _$_HomeStateLoading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int currentNavigationIndex) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int currentNavigationIndex)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int currentNavigationIndex)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateSuccess value) success,
    required TResult Function(_HomeStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStateLoading value)? loading,
    TResult? Function(_HomeStateSuccess value)? success,
    TResult? Function(_HomeStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateSuccess value)? success,
    TResult Function(_HomeStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeStateLoading implements HomeState {
  const factory _HomeStateLoading() = _$_HomeStateLoading;
}

/// @nodoc
abstract class _$$_HomeStateSuccessCopyWith<$Res> {
  factory _$$_HomeStateSuccessCopyWith(
          _$_HomeStateSuccess value, $Res Function(_$_HomeStateSuccess) then) =
      __$$_HomeStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentNavigationIndex});
}

/// @nodoc
class __$$_HomeStateSuccessCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeStateSuccess>
    implements _$$_HomeStateSuccessCopyWith<$Res> {
  __$$_HomeStateSuccessCopyWithImpl(
      _$_HomeStateSuccess _value, $Res Function(_$_HomeStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentNavigationIndex = null,
  }) {
    return _then(_$_HomeStateSuccess(
      currentNavigationIndex: null == currentNavigationIndex
          ? _value.currentNavigationIndex
          : currentNavigationIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeStateSuccess implements _HomeStateSuccess {
  const _$_HomeStateSuccess({required this.currentNavigationIndex});

  @override
  final int currentNavigationIndex;

  @override
  String toString() {
    return 'HomeState.success(currentNavigationIndex: $currentNavigationIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStateSuccess &&
            (identical(other.currentNavigationIndex, currentNavigationIndex) ||
                other.currentNavigationIndex == currentNavigationIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentNavigationIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateSuccessCopyWith<_$_HomeStateSuccess> get copyWith =>
      __$$_HomeStateSuccessCopyWithImpl<_$_HomeStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int currentNavigationIndex) success,
    required TResult Function(String error) failure,
  }) {
    return success(currentNavigationIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int currentNavigationIndex)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(currentNavigationIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int currentNavigationIndex)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(currentNavigationIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateSuccess value) success,
    required TResult Function(_HomeStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStateLoading value)? loading,
    TResult? Function(_HomeStateSuccess value)? success,
    TResult? Function(_HomeStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateSuccess value)? success,
    TResult Function(_HomeStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _HomeStateSuccess implements HomeState {
  const factory _HomeStateSuccess({required final int currentNavigationIndex}) =
      _$_HomeStateSuccess;

  int get currentNavigationIndex;
  @JsonKey(ignore: true)
  _$$_HomeStateSuccessCopyWith<_$_HomeStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeStateFailureCopyWith<$Res> {
  factory _$$_HomeStateFailureCopyWith(
          _$_HomeStateFailure value, $Res Function(_$_HomeStateFailure) then) =
      __$$_HomeStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_HomeStateFailureCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeStateFailure>
    implements _$$_HomeStateFailureCopyWith<$Res> {
  __$$_HomeStateFailureCopyWithImpl(
      _$_HomeStateFailure _value, $Res Function(_$_HomeStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_HomeStateFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeStateFailure implements _HomeStateFailure {
  const _$_HomeStateFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'HomeState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStateFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateFailureCopyWith<_$_HomeStateFailure> get copyWith =>
      __$$_HomeStateFailureCopyWithImpl<_$_HomeStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int currentNavigationIndex) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int currentNavigationIndex)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int currentNavigationIndex)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateSuccess value) success,
    required TResult Function(_HomeStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStateLoading value)? loading,
    TResult? Function(_HomeStateSuccess value)? success,
    TResult? Function(_HomeStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateSuccess value)? success,
    TResult Function(_HomeStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _HomeStateFailure implements HomeState {
  const factory _HomeStateFailure(final String error) = _$_HomeStateFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$_HomeStateFailureCopyWith<_$_HomeStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
