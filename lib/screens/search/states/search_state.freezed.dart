// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateSuccess value) success,
    required TResult Function(_SearchStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$$_SearchStateLoadingCopyWith<$Res> {
  factory _$$_SearchStateLoadingCopyWith(_$_SearchStateLoading value,
          $Res Function(_$_SearchStateLoading) then) =
      __$$_SearchStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchStateLoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateLoadingCopyWith<$Res> {
  __$$_SearchStateLoadingCopyWithImpl(
      _$_SearchStateLoading _value, $Res Function(_$_SearchStateLoading) _then)
      : super(_value, (v) => _then(v as _$_SearchStateLoading));

  @override
  _$_SearchStateLoading get _value => super._value as _$_SearchStateLoading;
}

/// @nodoc

class _$_SearchStateLoading implements _SearchStateLoading {
  const _$_SearchStateLoading();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateSuccess value) success,
    required TResult Function(_SearchStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchStateLoading implements SearchState {
  const factory _SearchStateLoading() = _$_SearchStateLoading;
}

/// @nodoc
abstract class _$$_SearchStateSuccessCopyWith<$Res> {
  factory _$$_SearchStateSuccessCopyWith(_$_SearchStateSuccess value,
          $Res Function(_$_SearchStateSuccess) then) =
      __$$_SearchStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchStateSuccessCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateSuccessCopyWith<$Res> {
  __$$_SearchStateSuccessCopyWithImpl(
      _$_SearchStateSuccess _value, $Res Function(_$_SearchStateSuccess) _then)
      : super(_value, (v) => _then(v as _$_SearchStateSuccess));

  @override
  _$_SearchStateSuccess get _value => super._value as _$_SearchStateSuccess;
}

/// @nodoc

class _$_SearchStateSuccess implements _SearchStateSuccess {
  const _$_SearchStateSuccess();

  @override
  String toString() {
    return 'SearchState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateSuccess value) success,
    required TResult Function(_SearchStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SearchStateSuccess implements SearchState {
  const factory _SearchStateSuccess() = _$_SearchStateSuccess;
}

/// @nodoc
abstract class _$$_SearchStateFailureCopyWith<$Res> {
  factory _$$_SearchStateFailureCopyWith(_$_SearchStateFailure value,
          $Res Function(_$_SearchStateFailure) then) =
      __$$_SearchStateFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_SearchStateFailureCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateFailureCopyWith<$Res> {
  __$$_SearchStateFailureCopyWithImpl(
      _$_SearchStateFailure _value, $Res Function(_$_SearchStateFailure) _then)
      : super(_value, (v) => _then(v as _$_SearchStateFailure));

  @override
  _$_SearchStateFailure get _value => super._value as _$_SearchStateFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_SearchStateFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchStateFailure implements _SearchStateFailure {
  const _$_SearchStateFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SearchState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchStateFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStateFailureCopyWith<_$_SearchStateFailure> get copyWith =>
      __$$_SearchStateFailureCopyWithImpl<_$_SearchStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateSuccess value) success,
    required TResult Function(_SearchStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateSuccess value)? success,
    TResult Function(_SearchStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _SearchStateFailure implements SearchState {
  const factory _SearchStateFailure(final String error) = _$_SearchStateFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SearchStateFailureCopyWith<_$_SearchStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
