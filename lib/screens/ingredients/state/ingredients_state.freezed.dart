// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredients_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IngredientsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ingredient> ingredients) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Ingredient> ingredients)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ingredient> ingredients)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IngredientsStateLoading value) loading,
    required TResult Function(_IngredientsStateSuccess value) success,
    required TResult Function(_IngredientsStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IngredientsStateLoading value)? loading,
    TResult? Function(_IngredientsStateSuccess value)? success,
    TResult? Function(_IngredientsStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IngredientsStateLoading value)? loading,
    TResult Function(_IngredientsStateSuccess value)? success,
    TResult Function(_IngredientsStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsStateCopyWith<$Res> {
  factory $IngredientsStateCopyWith(
          IngredientsState value, $Res Function(IngredientsState) then) =
      _$IngredientsStateCopyWithImpl<$Res, IngredientsState>;
}

/// @nodoc
class _$IngredientsStateCopyWithImpl<$Res, $Val extends IngredientsState>
    implements $IngredientsStateCopyWith<$Res> {
  _$IngredientsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IngredientsStateLoadingCopyWith<$Res> {
  factory _$$_IngredientsStateLoadingCopyWith(_$_IngredientsStateLoading value,
          $Res Function(_$_IngredientsStateLoading) then) =
      __$$_IngredientsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IngredientsStateLoadingCopyWithImpl<$Res>
    extends _$IngredientsStateCopyWithImpl<$Res, _$_IngredientsStateLoading>
    implements _$$_IngredientsStateLoadingCopyWith<$Res> {
  __$$_IngredientsStateLoadingCopyWithImpl(_$_IngredientsStateLoading _value,
      $Res Function(_$_IngredientsStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IngredientsStateLoading implements _IngredientsStateLoading {
  const _$_IngredientsStateLoading();

  @override
  String toString() {
    return 'IngredientsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ingredient> ingredients) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Ingredient> ingredients)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ingredient> ingredients)? success,
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
    required TResult Function(_IngredientsStateLoading value) loading,
    required TResult Function(_IngredientsStateSuccess value) success,
    required TResult Function(_IngredientsStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IngredientsStateLoading value)? loading,
    TResult? Function(_IngredientsStateSuccess value)? success,
    TResult? Function(_IngredientsStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IngredientsStateLoading value)? loading,
    TResult Function(_IngredientsStateSuccess value)? success,
    TResult Function(_IngredientsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _IngredientsStateLoading implements IngredientsState {
  const factory _IngredientsStateLoading() = _$_IngredientsStateLoading;
}

/// @nodoc
abstract class _$$_IngredientsStateSuccessCopyWith<$Res> {
  factory _$$_IngredientsStateSuccessCopyWith(_$_IngredientsStateSuccess value,
          $Res Function(_$_IngredientsStateSuccess) then) =
      __$$_IngredientsStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Ingredient> ingredients});
}

/// @nodoc
class __$$_IngredientsStateSuccessCopyWithImpl<$Res>
    extends _$IngredientsStateCopyWithImpl<$Res, _$_IngredientsStateSuccess>
    implements _$$_IngredientsStateSuccessCopyWith<$Res> {
  __$$_IngredientsStateSuccessCopyWithImpl(_$_IngredientsStateSuccess _value,
      $Res Function(_$_IngredientsStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
  }) {
    return _then(_$_IngredientsStateSuccess(
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
    ));
  }
}

/// @nodoc

class _$_IngredientsStateSuccess implements _IngredientsStateSuccess {
  const _$_IngredientsStateSuccess(
      {required final List<Ingredient> ingredients})
      : _ingredients = ingredients;

  final List<Ingredient> _ingredients;
  @override
  List<Ingredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'IngredientsState.success(ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientsStateSuccess &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientsStateSuccessCopyWith<_$_IngredientsStateSuccess>
      get copyWith =>
          __$$_IngredientsStateSuccessCopyWithImpl<_$_IngredientsStateSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ingredient> ingredients) success,
    required TResult Function(String error) failure,
  }) {
    return success(ingredients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Ingredient> ingredients)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(ingredients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ingredient> ingredients)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(ingredients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IngredientsStateLoading value) loading,
    required TResult Function(_IngredientsStateSuccess value) success,
    required TResult Function(_IngredientsStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IngredientsStateLoading value)? loading,
    TResult? Function(_IngredientsStateSuccess value)? success,
    TResult? Function(_IngredientsStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IngredientsStateLoading value)? loading,
    TResult Function(_IngredientsStateSuccess value)? success,
    TResult Function(_IngredientsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _IngredientsStateSuccess implements IngredientsState {
  const factory _IngredientsStateSuccess(
          {required final List<Ingredient> ingredients}) =
      _$_IngredientsStateSuccess;

  List<Ingredient> get ingredients;
  @JsonKey(ignore: true)
  _$$_IngredientsStateSuccessCopyWith<_$_IngredientsStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IngredientsStateFailureCopyWith<$Res> {
  factory _$$_IngredientsStateFailureCopyWith(_$_IngredientsStateFailure value,
          $Res Function(_$_IngredientsStateFailure) then) =
      __$$_IngredientsStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_IngredientsStateFailureCopyWithImpl<$Res>
    extends _$IngredientsStateCopyWithImpl<$Res, _$_IngredientsStateFailure>
    implements _$$_IngredientsStateFailureCopyWith<$Res> {
  __$$_IngredientsStateFailureCopyWithImpl(_$_IngredientsStateFailure _value,
      $Res Function(_$_IngredientsStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_IngredientsStateFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IngredientsStateFailure implements _IngredientsStateFailure {
  const _$_IngredientsStateFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'IngredientsState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientsStateFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientsStateFailureCopyWith<_$_IngredientsStateFailure>
      get copyWith =>
          __$$_IngredientsStateFailureCopyWithImpl<_$_IngredientsStateFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ingredient> ingredients) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Ingredient> ingredients)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ingredient> ingredients)? success,
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
    required TResult Function(_IngredientsStateLoading value) loading,
    required TResult Function(_IngredientsStateSuccess value) success,
    required TResult Function(_IngredientsStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IngredientsStateLoading value)? loading,
    TResult? Function(_IngredientsStateSuccess value)? success,
    TResult? Function(_IngredientsStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IngredientsStateLoading value)? loading,
    TResult Function(_IngredientsStateSuccess value)? success,
    TResult Function(_IngredientsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _IngredientsStateFailure implements IngredientsState {
  const factory _IngredientsStateFailure(final String error) =
      _$_IngredientsStateFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$_IngredientsStateFailureCopyWith<_$_IngredientsStateFailure>
      get copyWith => throw _privateConstructorUsedError;
}
