// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshEssay,
    required TResult Function() deleteEssay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshEssay,
    TResult? Function()? deleteEssay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshEssay,
    TResult Function()? deleteEssay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshEssay value) refreshEssay,
    required TResult Function(DeleteEssay value) deleteEssay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshEssay value)? refreshEssay,
    TResult? Function(DeleteEssay value)? deleteEssay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshEssay value)? refreshEssay,
    TResult Function(DeleteEssay value)? deleteEssay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RefreshEssayCopyWith<$Res> {
  factory _$$RefreshEssayCopyWith(
          _$RefreshEssay value, $Res Function(_$RefreshEssay) then) =
      __$$RefreshEssayCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshEssayCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RefreshEssay>
    implements _$$RefreshEssayCopyWith<$Res> {
  __$$RefreshEssayCopyWithImpl(
      _$RefreshEssay _value, $Res Function(_$RefreshEssay) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshEssay implements RefreshEssay {
  const _$RefreshEssay();

  @override
  String toString() {
    return 'HomeEvent.refreshEssay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshEssay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshEssay,
    required TResult Function() deleteEssay,
  }) {
    return refreshEssay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshEssay,
    TResult? Function()? deleteEssay,
  }) {
    return refreshEssay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshEssay,
    TResult Function()? deleteEssay,
    required TResult orElse(),
  }) {
    if (refreshEssay != null) {
      return refreshEssay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshEssay value) refreshEssay,
    required TResult Function(DeleteEssay value) deleteEssay,
  }) {
    return refreshEssay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshEssay value)? refreshEssay,
    TResult? Function(DeleteEssay value)? deleteEssay,
  }) {
    return refreshEssay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshEssay value)? refreshEssay,
    TResult Function(DeleteEssay value)? deleteEssay,
    required TResult orElse(),
  }) {
    if (refreshEssay != null) {
      return refreshEssay(this);
    }
    return orElse();
  }
}

abstract class RefreshEssay implements HomeEvent {
  const factory RefreshEssay() = _$RefreshEssay;
}

/// @nodoc
abstract class _$$DeleteEssayCopyWith<$Res> {
  factory _$$DeleteEssayCopyWith(
          _$DeleteEssay value, $Res Function(_$DeleteEssay) then) =
      __$$DeleteEssayCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteEssayCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeleteEssay>
    implements _$$DeleteEssayCopyWith<$Res> {
  __$$DeleteEssayCopyWithImpl(
      _$DeleteEssay _value, $Res Function(_$DeleteEssay) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteEssay implements DeleteEssay {
  const _$DeleteEssay();

  @override
  String toString() {
    return 'HomeEvent.deleteEssay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteEssay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshEssay,
    required TResult Function() deleteEssay,
  }) {
    return deleteEssay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshEssay,
    TResult? Function()? deleteEssay,
  }) {
    return deleteEssay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshEssay,
    TResult Function()? deleteEssay,
    required TResult orElse(),
  }) {
    if (deleteEssay != null) {
      return deleteEssay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshEssay value) refreshEssay,
    required TResult Function(DeleteEssay value) deleteEssay,
  }) {
    return deleteEssay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshEssay value)? refreshEssay,
    TResult? Function(DeleteEssay value)? deleteEssay,
  }) {
    return deleteEssay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshEssay value)? refreshEssay,
    TResult Function(DeleteEssay value)? deleteEssay,
    required TResult orElse(),
  }) {
    if (deleteEssay != null) {
      return deleteEssay(this);
    }
    return orElse();
  }
}

abstract class DeleteEssay implements HomeEvent {
  const factory DeleteEssay() = _$DeleteEssay;
}
