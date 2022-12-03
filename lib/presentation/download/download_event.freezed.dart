// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadEvent {
  PixaPicture get item => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PixaPicture item) downloadPicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PixaPicture item)? downloadPicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PixaPicture item)? downloadPicture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadPicture value) downloadPicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadPicture value)? downloadPicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadPicture value)? downloadPicture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadEventCopyWith<DownloadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadEventCopyWith<$Res> {
  factory $DownloadEventCopyWith(
          DownloadEvent value, $Res Function(DownloadEvent) then) =
      _$DownloadEventCopyWithImpl<$Res, DownloadEvent>;
  @useResult
  $Res call({PixaPicture item});

  $PixaPictureCopyWith<$Res> get item;
}

/// @nodoc
class _$DownloadEventCopyWithImpl<$Res, $Val extends DownloadEvent>
    implements $DownloadEventCopyWith<$Res> {
  _$DownloadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as PixaPicture,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PixaPictureCopyWith<$Res> get item {
    return $PixaPictureCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DownloadPictureCopyWith<$Res>
    implements $DownloadEventCopyWith<$Res> {
  factory _$$DownloadPictureCopyWith(
          _$DownloadPicture value, $Res Function(_$DownloadPicture) then) =
      __$$DownloadPictureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PixaPicture item});

  @override
  $PixaPictureCopyWith<$Res> get item;
}

/// @nodoc
class __$$DownloadPictureCopyWithImpl<$Res>
    extends _$DownloadEventCopyWithImpl<$Res, _$DownloadPicture>
    implements _$$DownloadPictureCopyWith<$Res> {
  __$$DownloadPictureCopyWithImpl(
      _$DownloadPicture _value, $Res Function(_$DownloadPicture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$DownloadPicture(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as PixaPicture,
    ));
  }
}

/// @nodoc

class _$DownloadPicture implements DownloadPicture {
  const _$DownloadPicture(this.item);

  @override
  final PixaPicture item;

  @override
  String toString() {
    return 'DownloadEvent.downloadPicture(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadPicture &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadPictureCopyWith<_$DownloadPicture> get copyWith =>
      __$$DownloadPictureCopyWithImpl<_$DownloadPicture>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PixaPicture item) downloadPicture,
  }) {
    return downloadPicture(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PixaPicture item)? downloadPicture,
  }) {
    return downloadPicture?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PixaPicture item)? downloadPicture,
    required TResult orElse(),
  }) {
    if (downloadPicture != null) {
      return downloadPicture(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadPicture value) downloadPicture,
  }) {
    return downloadPicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadPicture value)? downloadPicture,
  }) {
    return downloadPicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadPicture value)? downloadPicture,
    required TResult orElse(),
  }) {
    if (downloadPicture != null) {
      return downloadPicture(this);
    }
    return orElse();
  }
}

abstract class DownloadPicture implements DownloadEvent {
  const factory DownloadPicture(final PixaPicture item) = _$DownloadPicture;

  @override
  PixaPicture get item;
  @override
  @JsonKey(ignore: true)
  _$$DownloadPictureCopyWith<_$DownloadPicture> get copyWith =>
      throw _privateConstructorUsedError;
}
