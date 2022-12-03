// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchPicture,
    required TResult Function() clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchPicture,
    TResult? Function()? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchPicture,
    TResult Function()? clearState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchPicture value) searchPicture,
    required TResult Function(ClearState value) clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchPicture value)? searchPicture,
    TResult? Function(ClearState value)? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchPicture value)? searchPicture,
    TResult Function(ClearState value)? clearState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchPictureCopyWith<$Res> {
  factory _$$SearchPictureCopyWith(
          _$SearchPicture value, $Res Function(_$SearchPicture) then) =
      __$$SearchPictureCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchPictureCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchPicture>
    implements _$$SearchPictureCopyWith<$Res> {
  __$$SearchPictureCopyWithImpl(
      _$SearchPicture _value, $Res Function(_$SearchPicture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchPicture(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchPicture implements SearchPicture {
  const _$SearchPicture(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.searchPicture(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPicture &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPictureCopyWith<_$SearchPicture> get copyWith =>
      __$$SearchPictureCopyWithImpl<_$SearchPicture>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchPicture,
    required TResult Function() clearState,
  }) {
    return searchPicture(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchPicture,
    TResult? Function()? clearState,
  }) {
    return searchPicture?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchPicture,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (searchPicture != null) {
      return searchPicture(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchPicture value) searchPicture,
    required TResult Function(ClearState value) clearState,
  }) {
    return searchPicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchPicture value)? searchPicture,
    TResult? Function(ClearState value)? clearState,
  }) {
    return searchPicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchPicture value)? searchPicture,
    TResult Function(ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (searchPicture != null) {
      return searchPicture(this);
    }
    return orElse();
  }
}

abstract class SearchPicture implements SearchEvent {
  const factory SearchPicture(final String query) = _$SearchPicture;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchPictureCopyWith<_$SearchPicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearStateCopyWith<$Res> {
  factory _$$ClearStateCopyWith(
          _$ClearState value, $Res Function(_$ClearState) then) =
      __$$ClearStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearStateCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ClearState>
    implements _$$ClearStateCopyWith<$Res> {
  __$$ClearStateCopyWithImpl(
      _$ClearState _value, $Res Function(_$ClearState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearState implements ClearState {
  const _$ClearState();

  @override
  String toString() {
    return 'SearchEvent.clearState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchPicture,
    required TResult Function() clearState,
  }) {
    return clearState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchPicture,
    TResult? Function()? clearState,
  }) {
    return clearState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchPicture,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (clearState != null) {
      return clearState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchPicture value) searchPicture,
    required TResult Function(ClearState value) clearState,
  }) {
    return clearState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchPicture value)? searchPicture,
    TResult? Function(ClearState value)? clearState,
  }) {
    return clearState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchPicture value)? searchPicture,
    TResult Function(ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (clearState != null) {
      return clearState(this);
    }
    return orElse();
  }
}

abstract class ClearState implements SearchEvent {
  const factory ClearState() = _$ClearState;
}
