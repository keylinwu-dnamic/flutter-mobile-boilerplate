// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<dynamic> list) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> list)? success,
    TResult Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> list)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListStateLoading value) loading,
    required TResult Function(_ListStateSuccess value) success,
    required TResult Function(_ListStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ListStateLoading value)? loading,
    TResult Function(_ListStateSuccess value)? success,
    TResult Function(_ListStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListStateLoading value)? loading,
    TResult Function(_ListStateSuccess value)? success,
    TResult Function(_ListStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListStateCopyWithImpl<$Res> implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  final ListState _value;
  // ignore: unused_field
  final $Res Function(ListState) _then;
}

/// @nodoc
abstract class _$$_ListStateLoadingCopyWith<$Res> {
  factory _$$_ListStateLoadingCopyWith(
          _$_ListStateLoading value, $Res Function(_$_ListStateLoading) then) =
      __$$_ListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ListStateLoadingCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res>
    implements _$$_ListStateLoadingCopyWith<$Res> {
  __$$_ListStateLoadingCopyWithImpl(
      _$_ListStateLoading _value, $Res Function(_$_ListStateLoading) _then)
      : super(_value, (v) => _then(v as _$_ListStateLoading));

  @override
  _$_ListStateLoading get _value => super._value as _$_ListStateLoading;
}

/// @nodoc

class _$_ListStateLoading implements _ListStateLoading {
  const _$_ListStateLoading();

  @override
  String toString() {
    return 'ListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<dynamic> list) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> list)? success,
    TResult Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> list)? success,
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
    required TResult Function(_ListStateLoading value) loading,
    required TResult Function(_ListStateSuccess value) success,
    required TResult Function(_ListStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ListStateLoading value)? loading,
    TResult Function(_ListStateSuccess value)? success,
    TResult Function(_ListStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListStateLoading value)? loading,
    TResult Function(_ListStateSuccess value)? success,
    TResult Function(_ListStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ListStateLoading implements ListState {
  const factory _ListStateLoading() = _$_ListStateLoading;
}

/// @nodoc
abstract class _$$_ListStateSuccessCopyWith<$Res> {
  factory _$$_ListStateSuccessCopyWith(
          _$_ListStateSuccess value, $Res Function(_$_ListStateSuccess) then) =
      __$$_ListStateSuccessCopyWithImpl<$Res>;
  $Res call({List<dynamic> list});
}

/// @nodoc
class __$$_ListStateSuccessCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res>
    implements _$$_ListStateSuccessCopyWith<$Res> {
  __$$_ListStateSuccessCopyWithImpl(
      _$_ListStateSuccess _value, $Res Function(_$_ListStateSuccess) _then)
      : super(_value, (v) => _then(v as _$_ListStateSuccess));

  @override
  _$_ListStateSuccess get _value => super._value as _$_ListStateSuccess;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$_ListStateSuccess(
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_ListStateSuccess implements _ListStateSuccess {
  const _$_ListStateSuccess({required final List<dynamic> list}) : _list = list;

  final List<dynamic> _list;
  @override
  List<dynamic> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ListState.success(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListStateSuccess &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$_ListStateSuccessCopyWith<_$_ListStateSuccess> get copyWith =>
      __$$_ListStateSuccessCopyWithImpl<_$_ListStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<dynamic> list) success,
    required TResult Function(String error) failure,
  }) {
    return success(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> list)? success,
    TResult Function(String error)? failure,
  }) {
    return success?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> list)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListStateLoading value) loading,
    required TResult Function(_ListStateSuccess value) success,
    required TResult Function(_ListStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ListStateLoading value)? loading,
    TResult Function(_ListStateSuccess value)? success,
    TResult Function(_ListStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListStateLoading value)? loading,
    TResult Function(_ListStateSuccess value)? success,
    TResult Function(_ListStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ListStateSuccess implements ListState {
  const factory _ListStateSuccess({required final List<dynamic> list}) =
      _$_ListStateSuccess;

  List<dynamic> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ListStateSuccessCopyWith<_$_ListStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ListStateFailureCopyWith<$Res> {
  factory _$$_ListStateFailureCopyWith(
          _$_ListStateFailure value, $Res Function(_$_ListStateFailure) then) =
      __$$_ListStateFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_ListStateFailureCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res>
    implements _$$_ListStateFailureCopyWith<$Res> {
  __$$_ListStateFailureCopyWithImpl(
      _$_ListStateFailure _value, $Res Function(_$_ListStateFailure) _then)
      : super(_value, (v) => _then(v as _$_ListStateFailure));

  @override
  _$_ListStateFailure get _value => super._value as _$_ListStateFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_ListStateFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ListStateFailure implements _ListStateFailure {
  const _$_ListStateFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ListState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListStateFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ListStateFailureCopyWith<_$_ListStateFailure> get copyWith =>
      __$$_ListStateFailureCopyWithImpl<_$_ListStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<dynamic> list) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> list)? success,
    TResult Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<dynamic> list)? success,
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
    required TResult Function(_ListStateLoading value) loading,
    required TResult Function(_ListStateSuccess value) success,
    required TResult Function(_ListStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ListStateLoading value)? loading,
    TResult Function(_ListStateSuccess value)? success,
    TResult Function(_ListStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListStateLoading value)? loading,
    TResult Function(_ListStateSuccess value)? success,
    TResult Function(_ListStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ListStateFailure implements ListState {
  const factory _ListStateFailure(final String error) = _$_ListStateFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ListStateFailureCopyWith<_$_ListStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
