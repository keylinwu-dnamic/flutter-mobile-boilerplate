// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cocktail_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CocktailListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Cocktail> cocktailsList) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktailsList)? success,
    TResult Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktailsList)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CocktailListStateLoading value) loading,
    required TResult Function(_CocktailListStateSuccess value) success,
    required TResult Function(_CocktailListStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CocktailListStateLoading value)? loading,
    TResult Function(_CocktailListStateSuccess value)? success,
    TResult Function(_CocktailListStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CocktailListStateLoading value)? loading,
    TResult Function(_CocktailListStateSuccess value)? success,
    TResult Function(_CocktailListStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailListStateCopyWith<$Res> {
  factory $CocktailListStateCopyWith(
          CocktailListState value, $Res Function(CocktailListState) then) =
      _$CocktailListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CocktailListStateCopyWithImpl<$Res>
    implements $CocktailListStateCopyWith<$Res> {
  _$CocktailListStateCopyWithImpl(this._value, this._then);

  final CocktailListState _value;
  // ignore: unused_field
  final $Res Function(CocktailListState) _then;
}

/// @nodoc
abstract class _$$_CocktailListStateLoadingCopyWith<$Res> {
  factory _$$_CocktailListStateLoadingCopyWith(
          _$_CocktailListStateLoading value,
          $Res Function(_$_CocktailListStateLoading) then) =
      __$$_CocktailListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CocktailListStateLoadingCopyWithImpl<$Res>
    extends _$CocktailListStateCopyWithImpl<$Res>
    implements _$$_CocktailListStateLoadingCopyWith<$Res> {
  __$$_CocktailListStateLoadingCopyWithImpl(_$_CocktailListStateLoading _value,
      $Res Function(_$_CocktailListStateLoading) _then)
      : super(_value, (v) => _then(v as _$_CocktailListStateLoading));

  @override
  _$_CocktailListStateLoading get _value =>
      super._value as _$_CocktailListStateLoading;
}

/// @nodoc

class _$_CocktailListStateLoading implements _CocktailListStateLoading {
  const _$_CocktailListStateLoading();

  @override
  String toString() {
    return 'CocktailListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CocktailListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Cocktail> cocktailsList) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktailsList)? success,
    TResult Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktailsList)? success,
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
    required TResult Function(_CocktailListStateLoading value) loading,
    required TResult Function(_CocktailListStateSuccess value) success,
    required TResult Function(_CocktailListStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CocktailListStateLoading value)? loading,
    TResult Function(_CocktailListStateSuccess value)? success,
    TResult Function(_CocktailListStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CocktailListStateLoading value)? loading,
    TResult Function(_CocktailListStateSuccess value)? success,
    TResult Function(_CocktailListStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CocktailListStateLoading implements CocktailListState {
  const factory _CocktailListStateLoading() = _$_CocktailListStateLoading;
}

/// @nodoc
abstract class _$$_CocktailListStateSuccessCopyWith<$Res> {
  factory _$$_CocktailListStateSuccessCopyWith(
          _$_CocktailListStateSuccess value,
          $Res Function(_$_CocktailListStateSuccess) then) =
      __$$_CocktailListStateSuccessCopyWithImpl<$Res>;
  $Res call({List<Cocktail> cocktailsList});
}

/// @nodoc
class __$$_CocktailListStateSuccessCopyWithImpl<$Res>
    extends _$CocktailListStateCopyWithImpl<$Res>
    implements _$$_CocktailListStateSuccessCopyWith<$Res> {
  __$$_CocktailListStateSuccessCopyWithImpl(_$_CocktailListStateSuccess _value,
      $Res Function(_$_CocktailListStateSuccess) _then)
      : super(_value, (v) => _then(v as _$_CocktailListStateSuccess));

  @override
  _$_CocktailListStateSuccess get _value =>
      super._value as _$_CocktailListStateSuccess;

  @override
  $Res call({
    Object? cocktailsList = freezed,
  }) {
    return _then(_$_CocktailListStateSuccess(
      cocktailsList: cocktailsList == freezed
          ? _value._cocktailsList
          : cocktailsList // ignore: cast_nullable_to_non_nullable
              as List<Cocktail>,
    ));
  }
}

/// @nodoc

class _$_CocktailListStateSuccess implements _CocktailListStateSuccess {
  const _$_CocktailListStateSuccess(
      {required final List<Cocktail> cocktailsList})
      : _cocktailsList = cocktailsList;

  final List<Cocktail> _cocktailsList;
  @override
  List<Cocktail> get cocktailsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cocktailsList);
  }

  @override
  String toString() {
    return 'CocktailListState.success(cocktailsList: $cocktailsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CocktailListStateSuccess &&
            const DeepCollectionEquality()
                .equals(other._cocktailsList, _cocktailsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cocktailsList));

  @JsonKey(ignore: true)
  @override
  _$$_CocktailListStateSuccessCopyWith<_$_CocktailListStateSuccess>
      get copyWith => __$$_CocktailListStateSuccessCopyWithImpl<
          _$_CocktailListStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Cocktail> cocktailsList) success,
    required TResult Function(String error) failure,
  }) {
    return success(cocktailsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktailsList)? success,
    TResult Function(String error)? failure,
  }) {
    return success?.call(cocktailsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktailsList)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cocktailsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CocktailListStateLoading value) loading,
    required TResult Function(_CocktailListStateSuccess value) success,
    required TResult Function(_CocktailListStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CocktailListStateLoading value)? loading,
    TResult Function(_CocktailListStateSuccess value)? success,
    TResult Function(_CocktailListStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CocktailListStateLoading value)? loading,
    TResult Function(_CocktailListStateSuccess value)? success,
    TResult Function(_CocktailListStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CocktailListStateSuccess implements CocktailListState {
  const factory _CocktailListStateSuccess(
          {required final List<Cocktail> cocktailsList}) =
      _$_CocktailListStateSuccess;

  List<Cocktail> get cocktailsList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CocktailListStateSuccessCopyWith<_$_CocktailListStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CocktailListStateFailureCopyWith<$Res> {
  factory _$$_CocktailListStateFailureCopyWith(
          _$_CocktailListStateFailure value,
          $Res Function(_$_CocktailListStateFailure) then) =
      __$$_CocktailListStateFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_CocktailListStateFailureCopyWithImpl<$Res>
    extends _$CocktailListStateCopyWithImpl<$Res>
    implements _$$_CocktailListStateFailureCopyWith<$Res> {
  __$$_CocktailListStateFailureCopyWithImpl(_$_CocktailListStateFailure _value,
      $Res Function(_$_CocktailListStateFailure) _then)
      : super(_value, (v) => _then(v as _$_CocktailListStateFailure));

  @override
  _$_CocktailListStateFailure get _value =>
      super._value as _$_CocktailListStateFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_CocktailListStateFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CocktailListStateFailure implements _CocktailListStateFailure {
  const _$_CocktailListStateFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CocktailListState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CocktailListStateFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_CocktailListStateFailureCopyWith<_$_CocktailListStateFailure>
      get copyWith => __$$_CocktailListStateFailureCopyWithImpl<
          _$_CocktailListStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Cocktail> cocktailsList) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktailsList)? success,
    TResult Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Cocktail> cocktailsList)? success,
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
    required TResult Function(_CocktailListStateLoading value) loading,
    required TResult Function(_CocktailListStateSuccess value) success,
    required TResult Function(_CocktailListStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CocktailListStateLoading value)? loading,
    TResult Function(_CocktailListStateSuccess value)? success,
    TResult Function(_CocktailListStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CocktailListStateLoading value)? loading,
    TResult Function(_CocktailListStateSuccess value)? success,
    TResult Function(_CocktailListStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _CocktailListStateFailure implements CocktailListState {
  const factory _CocktailListStateFailure(final String error) =
      _$_CocktailListStateFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CocktailListStateFailureCopyWith<_$_CocktailListStateFailure>
      get copyWith => throw _privateConstructorUsedError;
}
