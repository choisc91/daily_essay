import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_state.freezed.dart';

@Freezed()
abstract class EditState with _$EditState {
  factory EditState({
    required String path,
  }) = _EditState;
}
