// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'essay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Essay _$EssayFromJson(Map<String, dynamic> json) {
  return _Essay.fromJson(json);
}

/// @nodoc
mixin _$Essay {
  String get essay => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EssayCopyWith<Essay> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EssayCopyWith<$Res> {
  factory $EssayCopyWith(Essay value, $Res Function(Essay) then) =
      _$EssayCopyWithImpl<$Res, Essay>;
  @useResult
  $Res call({String essay, String path, int timestamp, int? id});
}

/// @nodoc
class _$EssayCopyWithImpl<$Res, $Val extends Essay>
    implements $EssayCopyWith<$Res> {
  _$EssayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? essay = null,
    Object? path = null,
    Object? timestamp = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      essay: null == essay
          ? _value.essay
          : essay // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EssayCopyWith<$Res> implements $EssayCopyWith<$Res> {
  factory _$$_EssayCopyWith(_$_Essay value, $Res Function(_$_Essay) then) =
      __$$_EssayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String essay, String path, int timestamp, int? id});
}

/// @nodoc
class __$$_EssayCopyWithImpl<$Res> extends _$EssayCopyWithImpl<$Res, _$_Essay>
    implements _$$_EssayCopyWith<$Res> {
  __$$_EssayCopyWithImpl(_$_Essay _value, $Res Function(_$_Essay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? essay = null,
    Object? path = null,
    Object? timestamp = null,
    Object? id = freezed,
  }) {
    return _then(_$_Essay(
      essay: null == essay
          ? _value.essay
          : essay // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Essay implements _Essay {
  _$_Essay(
      {required this.essay,
      required this.path,
      required this.timestamp,
      this.id});

  factory _$_Essay.fromJson(Map<String, dynamic> json) =>
      _$$_EssayFromJson(json);

  @override
  final String essay;
  @override
  final String path;
  @override
  final int timestamp;
  @override
  final int? id;

  @override
  String toString() {
    return 'Essay(essay: $essay, path: $path, timestamp: $timestamp, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Essay &&
            (identical(other.essay, essay) || other.essay == essay) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, essay, path, timestamp, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EssayCopyWith<_$_Essay> get copyWith =>
      __$$_EssayCopyWithImpl<_$_Essay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EssayToJson(
      this,
    );
  }
}

abstract class _Essay implements Essay {
  factory _Essay(
      {required final String essay,
      required final String path,
      required final int timestamp,
      final int? id}) = _$_Essay;

  factory _Essay.fromJson(Map<String, dynamic> json) = _$_Essay.fromJson;

  @override
  String get essay;
  @override
  String get path;
  @override
  int get timestamp;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_EssayCopyWith<_$_Essay> get copyWith =>
      throw _privateConstructorUsedError;
}
