// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cocktails_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CocktailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Cocktail> cocktails) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktails)? success,
    TResult Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktails)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CocktailsStateLoading value) loading,
    required TResult Function(_CocktailsStateSuccess value) success,
    required TResult Function(_CocktailsStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CocktailsStateLoading value)? loading,
    TResult Function(_CocktailsStateSuccess value)? success,
    TResult Function(_CocktailsStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CocktailsStateLoading value)? loading,
    TResult Function(_CocktailsStateSuccess value)? success,
    TResult Function(_CocktailsStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailsStateCopyWith<$Res> {
  factory $CocktailsStateCopyWith(
          CocktailsState value, $Res Function(CocktailsState) then) =
      _$CocktailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CocktailsStateCopyWithImpl<$Res>
    implements $CocktailsStateCopyWith<$Res> {
  _$CocktailsStateCopyWithImpl(this._value, this._then);

  final CocktailsState _value;
  // ignore: unused_field
  final $Res Function(CocktailsState) _then;
}

/// @nodoc
abstract class _$$_CocktailsStateLoadingCopyWith<$Res> {
  factory _$$_CocktailsStateLoadingCopyWith(_$_CocktailsStateLoading value,
          $Res Function(_$_CocktailsStateLoading) then) =
      __$$_CocktailsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CocktailsStateLoadingCopyWithImpl<$Res>
    extends _$CocktailsStateCopyWithImpl<$Res>
    implements _$$_CocktailsStateLoadingCopyWith<$Res> {
  __$$_CocktailsStateLoadingCopyWithImpl(_$_CocktailsStateLoading _value,
      $Res Function(_$_CocktailsStateLoading) _then)
      : super(_value, (v) => _then(v as _$_CocktailsStateLoading));

  @override
  _$_CocktailsStateLoading get _value =>
      super._value as _$_CocktailsStateLoading;
}

/// @nodoc

class _$_CocktailsStateLoading implements _CocktailsStateLoading {
  const _$_CocktailsStateLoading();

  @override
  String toString() {
    return 'CocktailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CocktailsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Cocktail> cocktails) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktails)? success,
    TResult Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktails)? success,
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
    required TResult Function(_CocktailsStateLoading value) loading,
    required TResult Function(_CocktailsStateSuccess value) success,
    required TResult Function(_CocktailsStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CocktailsStateLoading value)? loading,
    TResult Function(_CocktailsStateSuccess value)? success,
    TResult Function(_CocktailsStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CocktailsStateLoading value)? loading,
    TResult Function(_CocktailsStateSuccess value)? success,
    TResult Function(_CocktailsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CocktailsStateLoading implements CocktailsState {
  const factory _CocktailsStateLoading() = _$_CocktailsStateLoading;
}

/// @nodoc
abstract class _$$_CocktailsStateSuccessCopyWith<$Res> {
  factory _$$_CocktailsStateSuccessCopyWith(_$_CocktailsStateSuccess value,
          $Res Function(_$_CocktailsStateSuccess) then) =
      __$$_CocktailsStateSuccessCopyWithImpl<$Res>;
  $Res call({List<Cocktail> cocktails});
}

/// @nodoc
class __$$_CocktailsStateSuccessCopyWithImpl<$Res>
    extends _$CocktailsStateCopyWithImpl<$Res>
    implements _$$_CocktailsStateSuccessCopyWith<$Res> {
  __$$_CocktailsStateSuccessCopyWithImpl(_$_CocktailsStateSuccess _value,
      $Res Function(_$_CocktailsStateSuccess) _then)
      : super(_value, (v) => _then(v as _$_CocktailsStateSuccess));

  @override
  _$_CocktailsStateSuccess get _value =>
      super._value as _$_CocktailsStateSuccess;

  @override
  $Res call({
    Object? cocktails = freezed,
  }) {
    return _then(_$_CocktailsStateSuccess(
      cocktails: cocktails == freezed
          ? _value._cocktails
          : cocktails // ignore: cast_nullable_to_non_nullable
              as List<Cocktail>,
    ));
  }
}

/// @nodoc

class _$_CocktailsStateSuccess implements _CocktailsStateSuccess {
  const _$_CocktailsStateSuccess({required final List<Cocktail> cocktails})
      : _cocktails = cocktails;

  final List<Cocktail> _cocktails;
  @override
  List<Cocktail> get cocktails {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cocktails);
  }

  @override
  String toString() {
    return 'CocktailsState.success(cocktails: $cocktails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CocktailsStateSuccess &&
            const DeepCollectionEquality()
                .equals(other._cocktails, _cocktails));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cocktails));

  @JsonKey(ignore: true)
  @override
  _$$_CocktailsStateSuccessCopyWith<_$_CocktailsStateSuccess> get copyWith =>
      __$$_CocktailsStateSuccessCopyWithImpl<_$_CocktailsStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Cocktail> cocktails) success,
    required TResult Function(String error) failure,
  }) {
    return success(cocktails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktails)? success,
    TResult Function(String error)? failure,
  }) {
    return success?.call(cocktails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktails)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cocktails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CocktailsStateLoading value) loading,
    required TResult Function(_CocktailsStateSuccess value) success,
    required TResult Function(_CocktailsStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CocktailsStateLoading value)? loading,
    TResult Function(_CocktailsStateSuccess value)? success,
    TResult Function(_CocktailsStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CocktailsStateLoading value)? loading,
    TResult Function(_CocktailsStateSuccess value)? success,
    TResult Function(_CocktailsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CocktailsStateSuccess implements CocktailsState {
  const factory _CocktailsStateSuccess(
      {required final List<Cocktail> cocktails}) = _$_CocktailsStateSuccess;

  List<Cocktail> get cocktails => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CocktailsStateSuccessCopyWith<_$_CocktailsStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CocktailsStateFailureCopyWith<$Res> {
  factory _$$_CocktailsStateFailureCopyWith(_$_CocktailsStateFailure value,
          $Res Function(_$_CocktailsStateFailure) then) =
      __$$_CocktailsStateFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_CocktailsStateFailureCopyWithImpl<$Res>
    extends _$CocktailsStateCopyWithImpl<$Res>
    implements _$$_CocktailsStateFailureCopyWith<$Res> {
  __$$_CocktailsStateFailureCopyWithImpl(_$_CocktailsStateFailure _value,
      $Res Function(_$_CocktailsStateFailure) _then)
      : super(_value, (v) => _then(v as _$_CocktailsStateFailure));

  @override
  _$_CocktailsStateFailure get _value =>
      super._value as _$_CocktailsStateFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_CocktailsStateFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CocktailsStateFailure implements _CocktailsStateFailure {
  const _$_CocktailsStateFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CocktailsState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CocktailsStateFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_CocktailsStateFailureCopyWith<_$_CocktailsStateFailure> get copyWith =>
      __$$_CocktailsStateFailureCopyWithImpl<_$_CocktailsStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Cocktail> cocktails) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktails)? success,
    TResult Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktails)? success,
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
    required TResult Function(_CocktailsStateLoading value) loading,
    required TResult Function(_CocktailsStateSuccess value) success,
    required TResult Function(_CocktailsStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CocktailsStateLoading value)? loading,
    TResult Function(_CocktailsStateSuccess value)? success,
    TResult Function(_CocktailsStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CocktailsStateLoading value)? loading,
    TResult Function(_CocktailsStateSuccess value)? success,
    TResult Function(_CocktailsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _CocktailsStateFailure implements CocktailsState {
  const factory _CocktailsStateFailure(final String error) =
      _$_CocktailsStateFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CocktailsStateFailureCopyWith<_$_CocktailsStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
