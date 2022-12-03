// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditUiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveEssay,
    required TResult Function(String message) showErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveEssay,
    TResult? Function(String message)? showErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveEssay,
    TResult Function(String message)? showErrorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveEssay value) saveEssay,
    required TResult Function(ShowErrorMessage value) showErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveEssay value)? saveEssay,
    TResult? Function(ShowErrorMessage value)? showErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveEssay value)? saveEssay,
    TResult Function(ShowErrorMessage value)? showErrorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUiEventCopyWith<$Res> {
  factory $EditUiEventCopyWith(
          EditUiEvent value, $Res Function(EditUiEvent) then) =
      _$EditUiEventCopyWithImpl<$Res, EditUiEvent>;
}

/// @nodoc
class _$EditUiEventCopyWithImpl<$Res, $Val extends EditUiEvent>
    implements $EditUiEventCopyWith<$Res> {
  _$EditUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SaveEssayCopyWith<$Res> {
  factory _$$SaveEssayCopyWith(
          _$SaveEssay value, $Res Function(_$SaveEssay) then) =
      __$$SaveEssayCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveEssayCopyWithImpl<$Res>
    extends _$EditUiEventCopyWithImpl<$Res, _$SaveEssay>
    implements _$$SaveEssayCopyWith<$Res> {
  __$$SaveEssayCopyWithImpl(
      _$SaveEssay _value, $Res Function(_$SaveEssay) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveEssay implements SaveEssay {
  const _$SaveEssay();

  @override
  String toString() {
    return 'EditUiEvent.saveEssay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveEssay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveEssay,
    required TResult Function(String message) showErrorMessage,
  }) {
    return saveEssay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveEssay,
    TResult? Function(String message)? showErrorMessage,
  }) {
    return saveEssay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveEssay,
    TResult Function(String message)? showErrorMessage,
    required TResult orElse(),
  }) {
    if (saveEssay != null) {
      return saveEssay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveEssay value) saveEssay,
    required TResult Function(ShowErrorMessage value) showErrorMessage,
  }) {
    return saveEssay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveEssay value)? saveEssay,
    TResult? Function(ShowErrorMessage value)? showErrorMessage,
  }) {
    return saveEssay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveEssay value)? saveEssay,
    TResult Function(ShowErrorMessage value)? showErrorMessage,
    required TResult orElse(),
  }) {
    if (saveEssay != null) {
      return saveEssay(this);
    }
    return orElse();
  }
}

abstract class SaveEssay implements EditUiEvent {
  const factory SaveEssay() = _$SaveEssay;
}

/// @nodoc
abstract class _$$ShowErrorMessageCopyWith<$Res> {
  factory _$$ShowErrorMessageCopyWith(
          _$ShowErrorMessage value, $Res Function(_$ShowErrorMessage) then) =
      __$$ShowErrorMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowErrorMessageCopyWithImpl<$Res>
    extends _$EditUiEventCopyWithImpl<$Res, _$ShowErrorMessage>
    implements _$$ShowErrorMessageCopyWith<$Res> {
  __$$ShowErrorMessageCopyWithImpl(
      _$ShowErrorMessage _value, $Res Function(_$ShowErrorMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowErrorMessage(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowErrorMessage implements ShowErrorMessage {
  const _$ShowErrorMessage(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EditUiEvent.showErrorMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowErrorMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowErrorMessageCopyWith<_$ShowErrorMessage> get copyWith =>
      __$$ShowErrorMessageCopyWithImpl<_$ShowErrorMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveEssay,
    required TResult Function(String message) showErrorMessage,
  }) {
    return showErrorMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveEssay,
    TResult? Function(String message)? showErrorMessage,
  }) {
    return showErrorMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveEssay,
    TResult Function(String message)? showErrorMessage,
    required TResult orElse(),
  }) {
    if (showErrorMessage != null) {
      return showErrorMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveEssay value) saveEssay,
    required TResult Function(ShowErrorMessage value) showErrorMessage,
  }) {
    return showErrorMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveEssay value)? saveEssay,
    TResult? Function(ShowErrorMessage value)? showErrorMessage,
  }) {
    return showErrorMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveEssay value)? saveEssay,
    TResult Function(ShowErrorMessage value)? showErrorMessage,
    required TResult orElse(),
  }) {
    if (showErrorMessage != null) {
      return showErrorMessage(this);
    }
    return orElse();
  }
}

abstract class ShowErrorMessage implements EditUiEvent {
  const factory ShowErrorMessage(final String message) = _$ShowErrorMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$ShowErrorMessageCopyWith<_$ShowErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
