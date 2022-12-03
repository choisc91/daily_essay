// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadPicture _$DownloadPictureFromJson(Map<String, dynamic> json) {
  return _Picture.fromJson(json);
}

/// @nodoc
mixin _$DownloadPicture {
  int get id => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;
  String get largeImageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadPictureCopyWith<DownloadPicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadPictureCopyWith<$Res> {
  factory $DownloadPictureCopyWith(
          DownloadPicture value, $Res Function(DownloadPicture) then) =
      _$DownloadPictureCopyWithImpl<$Res, DownloadPicture>;
  @useResult
  $Res call({int id, String tags, String largeImageURL});
}

/// @nodoc
class _$DownloadPictureCopyWithImpl<$Res, $Val extends DownloadPicture>
    implements $DownloadPictureCopyWith<$Res> {
  _$DownloadPictureCopyWithImpl(this._value, this._then);

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
abstract class _$$_PictureCopyWith<$Res>
    implements $DownloadPictureCopyWith<$Res> {
  factory _$$_PictureCopyWith(
          _$_Picture value, $Res Function(_$_Picture) then) =
      __$$_PictureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String tags, String largeImageURL});
}

/// @nodoc
class __$$_PictureCopyWithImpl<$Res>
    extends _$DownloadPictureCopyWithImpl<$Res, _$_Picture>
    implements _$$_PictureCopyWith<$Res> {
  __$$_PictureCopyWithImpl(_$_Picture _value, $Res Function(_$_Picture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tags = null,
    Object? largeImageURL = null,
  }) {
    return _then(_$_Picture(
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
class _$_Picture implements _Picture {
  _$_Picture(
      {required this.id, required this.tags, required this.largeImageURL});

  factory _$_Picture.fromJson(Map<String, dynamic> json) =>
      _$$_PictureFromJson(json);

  @override
  final int id;
  @override
  final String tags;
  @override
  final String largeImageURL;

  @override
  String toString() {
    return 'DownloadPicture(id: $id, tags: $tags, largeImageURL: $largeImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Picture &&
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
  _$$_PictureCopyWith<_$_Picture> get copyWith =>
      __$$_PictureCopyWithImpl<_$_Picture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PictureToJson(
      this,
    );
  }
}

abstract class _Picture implements DownloadPicture {
  factory _Picture(
      {required final int id,
      required final String tags,
      required final String largeImageURL}) = _$_Picture;

  factory _Picture.fromJson(Map<String, dynamic> json) = _$_Picture.fromJson;

  @override
  int get id;
  @override
  String get tags;
  @override
  String get largeImageURL;
  @override
  @JsonKey(ignore: true)
  _$$_PictureCopyWith<_$_Picture> get copyWith =>
      throw _privateConstructorUsedError;
}
