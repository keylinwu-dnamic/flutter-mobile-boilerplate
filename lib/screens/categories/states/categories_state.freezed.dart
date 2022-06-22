// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categories) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? success,
    TResult Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoriesStateLoading value) loading,
    required TResult Function(_CategoriesStateSuccess value) success,
    required TResult Function(_CategoriesStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CategoriesStateLoading value)? loading,
    TResult Function(_CategoriesStateSuccess value)? success,
    TResult Function(_CategoriesStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoriesStateLoading value)? loading,
    TResult Function(_CategoriesStateSuccess value)? success,
    TResult Function(_CategoriesStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  final CategoriesState _value;
  // ignore: unused_field
  final $Res Function(CategoriesState) _then;
}

/// @nodoc
abstract class _$$_CategoriesStateLoadingCopyWith<$Res> {
  factory _$$_CategoriesStateLoadingCopyWith(_$_CategoriesStateLoading value,
          $Res Function(_$_CategoriesStateLoading) then) =
      __$$_CategoriesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CategoriesStateLoadingCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res>
    implements _$$_CategoriesStateLoadingCopyWith<$Res> {
  __$$_CategoriesStateLoadingCopyWithImpl(_$_CategoriesStateLoading _value,
      $Res Function(_$_CategoriesStateLoading) _then)
      : super(_value, (v) => _then(v as _$_CategoriesStateLoading));

  @override
  _$_CategoriesStateLoading get _value =>
      super._value as _$_CategoriesStateLoading;
}

/// @nodoc

class _$_CategoriesStateLoading implements _CategoriesStateLoading {
  const _$_CategoriesStateLoading();

  @override
  String toString() {
    return 'CategoriesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categories) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? success,
    TResult Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? success,
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
    required TResult Function(_CategoriesStateLoading value) loading,
    required TResult Function(_CategoriesStateSuccess value) success,
    required TResult Function(_CategoriesStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CategoriesStateLoading value)? loading,
    TResult Function(_CategoriesStateSuccess value)? success,
    TResult Function(_CategoriesStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoriesStateLoading value)? loading,
    TResult Function(_CategoriesStateSuccess value)? success,
    TResult Function(_CategoriesStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CategoriesStateLoading implements CategoriesState {
  const factory _CategoriesStateLoading() = _$_CategoriesStateLoading;
}

/// @nodoc
abstract class _$$_CategoriesStateSuccessCopyWith<$Res> {
  factory _$$_CategoriesStateSuccessCopyWith(_$_CategoriesStateSuccess value,
          $Res Function(_$_CategoriesStateSuccess) then) =
      __$$_CategoriesStateSuccessCopyWithImpl<$Res>;
  $Res call({List<Category> categories});
}

/// @nodoc
class __$$_CategoriesStateSuccessCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res>
    implements _$$_CategoriesStateSuccessCopyWith<$Res> {
  __$$_CategoriesStateSuccessCopyWithImpl(_$_CategoriesStateSuccess _value,
      $Res Function(_$_CategoriesStateSuccess) _then)
      : super(_value, (v) => _then(v as _$_CategoriesStateSuccess));

  @override
  _$_CategoriesStateSuccess get _value =>
      super._value as _$_CategoriesStateSuccess;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_$_CategoriesStateSuccess(
      categories: categories == freezed
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$_CategoriesStateSuccess implements _CategoriesStateSuccess {
  const _$_CategoriesStateSuccess({required final List<Category> categories})
      : _categories = categories;

  final List<Category> _categories;
  @override
  List<Category> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesState.success(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesStateSuccess &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  _$$_CategoriesStateSuccessCopyWith<_$_CategoriesStateSuccess> get copyWith =>
      __$$_CategoriesStateSuccessCopyWithImpl<_$_CategoriesStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categories) success,
    required TResult Function(String error) failure,
  }) {
    return success(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? success,
    TResult Function(String error)? failure,
  }) {
    return success?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoriesStateLoading value) loading,
    required TResult Function(_CategoriesStateSuccess value) success,
    required TResult Function(_CategoriesStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CategoriesStateLoading value)? loading,
    TResult Function(_CategoriesStateSuccess value)? success,
    TResult Function(_CategoriesStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoriesStateLoading value)? loading,
    TResult Function(_CategoriesStateSuccess value)? success,
    TResult Function(_CategoriesStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CategoriesStateSuccess implements CategoriesState {
  const factory _CategoriesStateSuccess(
      {required final List<Category> categories}) = _$_CategoriesStateSuccess;

  List<Category> get categories => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CategoriesStateSuccessCopyWith<_$_CategoriesStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CategoriesStateFailureCopyWith<$Res> {
  factory _$$_CategoriesStateFailureCopyWith(_$_CategoriesStateFailure value,
          $Res Function(_$_CategoriesStateFailure) then) =
      __$$_CategoriesStateFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_CategoriesStateFailureCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res>
    implements _$$_CategoriesStateFailureCopyWith<$Res> {
  __$$_CategoriesStateFailureCopyWithImpl(_$_CategoriesStateFailure _value,
      $Res Function(_$_CategoriesStateFailure) _then)
      : super(_value, (v) => _then(v as _$_CategoriesStateFailure));

  @override
  _$_CategoriesStateFailure get _value =>
      super._value as _$_CategoriesStateFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_CategoriesStateFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoriesStateFailure implements _CategoriesStateFailure {
  const _$_CategoriesStateFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CategoriesState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesStateFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_CategoriesStateFailureCopyWith<_$_CategoriesStateFailure> get copyWith =>
      __$$_CategoriesStateFailureCopyWithImpl<_$_CategoriesStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categories) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? success,
    TResult Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? success,
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
    required TResult Function(_CategoriesStateLoading value) loading,
    required TResult Function(_CategoriesStateSuccess value) success,
    required TResult Function(_CategoriesStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CategoriesStateLoading value)? loading,
    TResult Function(_CategoriesStateSuccess value)? success,
    TResult Function(_CategoriesStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoriesStateLoading value)? loading,
    TResult Function(_CategoriesStateSuccess value)? success,
    TResult Function(_CategoriesStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _CategoriesStateFailure implements CategoriesState {
  const factory _CategoriesStateFailure(final String error) =
      _$_CategoriesStateFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CategoriesStateFailureCopyWith<_$_CategoriesStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
