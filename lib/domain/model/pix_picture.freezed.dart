// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pix_picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PixaPicture _$PixaPictureFromJson(Map<String, dynamic> json) {
  return _PixaPicture.fromJson(json);
}

/// @nodoc
mixin _$PixaPicture {
  int get id => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;
  String get largeImageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PixaPictureCopyWith<PixaPicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixaPictureCopyWith<$Res> {
  factory $PixaPictureCopyWith(
          PixaPicture value, $Res Function(PixaPicture) then) =
      _$PixaPictureCopyWithImpl<$Res, PixaPicture>;
  @useResult
  $Res call({int id, String tags, String largeImageURL});
}

/// @nodoc
class _$PixaPictureCopyWithImpl<$Res, $Val extends PixaPicture>
    implements $PixaPictureCopyWith<$Res> {
  _$PixaPictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tags = null,
    Object? largeImageURL = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      largeImageURL: null == largeImageURL
          ? _value.largeImageURL
          : largeImageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PixaPictureCopyWith<$Res>
    implements $PixaPictureCopyWith<$Res> {
  factory _$$_PixaPictureCopyWith(
          _$_PixaPicture value, $Res Function(_$_PixaPicture) then) =
      __$$_PixaPictureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String tags, String largeImageURL});
}

/// @nodoc
class __$$_PixaPictureCopyWithImpl<$Res>
    extends _$PixaPictureCopyWithImpl<$Res, _$_PixaPicture>
    implements _$$_PixaPictureCopyWith<$Res> {
  __$$_PixaPictureCopyWithImpl(
      _$_PixaPicture _value, $Res Function(_$_PixaPicture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tags = null,
    Object? largeImageURL = null,
  }) {
    return _then(_$_PixaPicture(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      largeImageURL: null == largeImageURL
          ? _value.largeImageURL
          : largeImageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PixaPicture implements _PixaPicture {
  _$_PixaPicture(
      {required this.id, required this.tags, required this.largeImageURL});

  factory _$_PixaPicture.fromJson(Map<String, dynamic> json) =>
      _$$_PixaPictureFromJson(json);

  @override
  final int id;
  @override
  final String tags;
  @override
  final String largeImageURL;

  @override
  String toString() {
    return 'PixaPicture(id: $id, tags: $tags, largeImageURL: $largeImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PixaPicture &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.largeImageURL, largeImageURL) ||
                other.largeImageURL == largeImageURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tags, largeImageURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PixaPictureCopyWith<_$_PixaPicture> get copyWith =>
      __$$_PixaPictureCopyWithImpl<_$_PixaPicture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PixaPictureToJson(
      this,
    );
  }
}

abstract class _PixaPicture implements PixaPicture {
  factory _PixaPicture(
      {required final int id,
      required final String tags,
      required final String largeImageURL}) = _$_PixaPicture;

  factory _PixaPicture.fromJson(Map<String, dynamic> json) =
      _$_PixaPicture.fromJson;

  @override
  int get id;
  @override
  String get tags;
  @override
  String get largeImageURL;
  @override
  @JsonKey(ignore: true)
  _$$_PixaPictureCopyWith<_$_PixaPicture> get copyWith =>
      throw _privateConstructorUsedError;
}
