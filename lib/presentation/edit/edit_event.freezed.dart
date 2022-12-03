// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id, String essay, String path) addEssay,
    required TResult Function() getShootPicture,
    required TResult Function() getGalleryPicture,
    required TResult Function() clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id, String essay, String path)? addEssay,
    TResult? Function()? getShootPicture,
    TResult? Function()? getGalleryPicture,
    TResult? Function()? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id, String essay, String path)? addEssay,
    TResult Function()? getShootPicture,
    TResult Function()? getGalleryPicture,
    TResult Function()? clearState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEssay value) addEssay,
    required TResult Function(GetShootPicture value) getShootPicture,
    required TResult Function(GetGalleryPicture value) getGalleryPicture,
    required TResult Function(ClearState value) clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddEssay value)? addEssay,
    TResult? Function(GetShootPicture value)? getShootPicture,
    TResult? Function(GetGalleryPicture value)? getGalleryPicture,
    TResult? Function(ClearState value)? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEssay value)? addEssay,
    TResult Function(GetShootPicture value)? getShootPicture,
    TResult Function(GetGalleryPicture value)? getGalleryPicture,
    TResult Function(ClearState value)? clearState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditEventCopyWith<$Res> {
  factory $EditEventCopyWith(EditEvent value, $Res Function(EditEvent) then) =
      _$EditEventCopyWithImpl<$Res, EditEvent>;
}

/// @nodoc
class _$EditEventCopyWithImpl<$Res, $Val extends EditEvent>
    implements $EditEventCopyWith<$Res> {
  _$EditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddEssayCopyWith<$Res> {
  factory _$$AddEssayCopyWith(
          _$AddEssay value, $Res Function(_$AddEssay) then) =
      __$$AddEssayCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id, String essay, String path});
}

/// @nodoc
class __$$AddEssayCopyWithImpl<$Res>
    extends _$EditEventCopyWithImpl<$Res, _$AddEssay>
    implements _$$AddEssayCopyWith<$Res> {
  __$$AddEssayCopyWithImpl(_$AddEssay _value, $Res Function(_$AddEssay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? essay = null,
    Object? path = null,
  }) {
    return _then(_$AddEssay(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      null == essay
          ? _value.essay
          : essay // ignore: cast_nullable_to_non_nullable
              as String,
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddEssay implements AddEssay {
  const _$AddEssay(this.id, this.essay, this.path);

  @override
  final int? id;
  @override
  final String essay;
  @override
  final String path;

  @override
  String toString() {
    return 'EditEvent.addEssay(id: $id, essay: $essay, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEssay &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.essay, essay) || other.essay == essay) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, essay, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEssayCopyWith<_$AddEssay> get copyWith =>
      __$$AddEssayCopyWithImpl<_$AddEssay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id, String essay, String path) addEssay,
    required TResult Function() getShootPicture,
    required TResult Function() getGalleryPicture,
    required TResult Function() clearState,
  }) {
    return addEssay(id, essay, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id, String essay, String path)? addEssay,
    TResult? Function()? getShootPicture,
    TResult? Function()? getGalleryPicture,
    TResult? Function()? clearState,
  }) {
    return addEssay?.call(id, essay, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id, String essay, String path)? addEssay,
    TResult Function()? getShootPicture,
    TResult Function()? getGalleryPicture,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (addEssay != null) {
      return addEssay(id, essay, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEssay value) addEssay,
    required TResult Function(GetShootPicture value) getShootPicture,
    required TResult Function(GetGalleryPicture value) getGalleryPicture,
    required TResult Function(ClearState value) clearState,
  }) {
    return addEssay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddEssay value)? addEssay,
    TResult? Function(GetShootPicture value)? getShootPicture,
    TResult? Function(GetGalleryPicture value)? getGalleryPicture,
    TResult? Function(ClearState value)? clearState,
  }) {
    return addEssay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEssay value)? addEssay,
    TResult Function(GetShootPicture value)? getShootPicture,
    TResult Function(GetGalleryPicture value)? getGalleryPicture,
    TResult Function(ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (addEssay != null) {
      return addEssay(this);
    }
    return orElse();
  }
}

abstract class AddEssay implements EditEvent {
  const factory AddEssay(final int? id, final String essay, final String path) =
      _$AddEssay;

  int? get id;
  String get essay;
  String get path;
  @JsonKey(ignore: true)
  _$$AddEssayCopyWith<_$AddEssay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetShootPictureCopyWith<$Res> {
  factory _$$GetShootPictureCopyWith(
          _$GetShootPicture value, $Res Function(_$GetShootPicture) then) =
      __$$GetShootPictureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetShootPictureCopyWithImpl<$Res>
    extends _$EditEventCopyWithImpl<$Res, _$GetShootPicture>
    implements _$$GetShootPictureCopyWith<$Res> {
  __$$GetShootPictureCopyWithImpl(
      _$GetShootPicture _value, $Res Function(_$GetShootPicture) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetShootPicture implements GetShootPicture {
  const _$GetShootPicture();

  @override
  String toString() {
    return 'EditEvent.getShootPicture()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetShootPicture);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id, String essay, String path) addEssay,
    required TResult Function() getShootPicture,
    required TResult Function() getGalleryPicture,
    required TResult Function() clearState,
  }) {
    return getShootPicture();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id, String essay, String path)? addEssay,
    TResult? Function()? getShootPicture,
    TResult? Function()? getGalleryPicture,
    TResult? Function()? clearState,
  }) {
    return getShootPicture?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id, String essay, String path)? addEssay,
    TResult Function()? getShootPicture,
    TResult Function()? getGalleryPicture,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (getShootPicture != null) {
      return getShootPicture();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEssay value) addEssay,
    required TResult Function(GetShootPicture value) getShootPicture,
    required TResult Function(GetGalleryPicture value) getGalleryPicture,
    required TResult Function(ClearState value) clearState,
  }) {
    return getShootPicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddEssay value)? addEssay,
    TResult? Function(GetShootPicture value)? getShootPicture,
    TResult? Function(GetGalleryPicture value)? getGalleryPicture,
    TResult? Function(ClearState value)? clearState,
  }) {
    return getShootPicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEssay value)? addEssay,
    TResult Function(GetShootPicture value)? getShootPicture,
    TResult Function(GetGalleryPicture value)? getGalleryPicture,
    TResult Function(ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (getShootPicture != null) {
      return getShootPicture(this);
    }
    return orElse();
  }
}

abstract class GetShootPicture implements EditEvent {
  const factory GetShootPicture() = _$GetShootPicture;
}

/// @nodoc
abstract class _$$GetGalleryPictureCopyWith<$Res> {
  factory _$$GetGalleryPictureCopyWith(
          _$GetGalleryPicture value, $Res Function(_$GetGalleryPicture) then) =
      __$$GetGalleryPictureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetGalleryPictureCopyWithImpl<$Res>
    extends _$EditEventCopyWithImpl<$Res, _$GetGalleryPicture>
    implements _$$GetGalleryPictureCopyWith<$Res> {
  __$$GetGalleryPictureCopyWithImpl(
      _$GetGalleryPicture _value, $Res Function(_$GetGalleryPicture) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetGalleryPicture implements GetGalleryPicture {
  const _$GetGalleryPicture();

  @override
  String toString() {
    return 'EditEvent.getGalleryPicture()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetGalleryPicture);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id, String essay, String path) addEssay,
    required TResult Function() getShootPicture,
    required TResult Function() getGalleryPicture,
    required TResult Function() clearState,
  }) {
    return getGalleryPicture();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id, String essay, String path)? addEssay,
    TResult? Function()? getShootPicture,
    TResult? Function()? getGalleryPicture,
    TResult? Function()? clearState,
  }) {
    return getGalleryPicture?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id, String essay, String path)? addEssay,
    TResult Function()? getShootPicture,
    TResult Function()? getGalleryPicture,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (getGalleryPicture != null) {
      return getGalleryPicture();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEssay value) addEssay,
    required TResult Function(GetShootPicture value) getShootPicture,
    required TResult Function(GetGalleryPicture value) getGalleryPicture,
    required TResult Function(ClearState value) clearState,
  }) {
    return getGalleryPicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddEssay value)? addEssay,
    TResult? Function(GetShootPicture value)? getShootPicture,
    TResult? Function(GetGalleryPicture value)? getGalleryPicture,
    TResult? Function(ClearState value)? clearState,
  }) {
    return getGalleryPicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEssay value)? addEssay,
    TResult Function(GetShootPicture value)? getShootPicture,
    TResult Function(GetGalleryPicture value)? getGalleryPicture,
    TResult Function(ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (getGalleryPicture != null) {
      return getGalleryPicture(this);
    }
    return orElse();
  }
}

abstract class GetGalleryPicture implements EditEvent {
  const factory GetGalleryPicture() = _$GetGalleryPicture;
}

/// @nodoc
abstract class _$$ClearStateCopyWith<$Res> {
  factory _$$ClearStateCopyWith(
          _$ClearState value, $Res Function(_$ClearState) then) =
      __$$ClearStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearStateCopyWithImpl<$Res>
    extends _$EditEventCopyWithImpl<$Res, _$ClearState>
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
    return 'EditEvent.clearState()';
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
    required TResult Function(int? id, String essay, String path) addEssay,
    required TResult Function() getShootPicture,
    required TResult Function() getGalleryPicture,
    required TResult Function() clearState,
  }) {
    return clearState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id, String essay, String path)? addEssay,
    TResult? Function()? getShootPicture,
    TResult? Function()? getGalleryPicture,
    TResult? Function()? clearState,
  }) {
    return clearState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id, String essay, String path)? addEssay,
    TResult Function()? getShootPicture,
    TResult Function()? getGalleryPicture,
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
    required TResult Function(AddEssay value) addEssay,
    required TResult Function(GetShootPicture value) getShootPicture,
    required TResult Function(GetGalleryPicture value) getGalleryPicture,
    required TResult Function(ClearState value) clearState,
  }) {
    return clearState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddEssay value)? addEssay,
    TResult? Function(GetShootPicture value)? getShootPicture,
    TResult? Function(GetGalleryPicture value)? getGalleryPicture,
    TResult? Function(ClearState value)? clearState,
  }) {
    return clearState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEssay value)? addEssay,
    TResult Function(GetShootPicture value)? getShootPicture,
    TResult Function(GetGalleryPicture value)? getGalleryPicture,
    TResult Function(ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (clearState != null) {
      return clearState(this);
    }
    return orElse();
  }
}

abstract class ClearState implements EditEvent {
  const factory ClearState() = _$ClearState;
}
