import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_ui_event.freezed.dart';

@Freezed()
abstract class EditUiEvent with _$EditUiEvent {
  const factory EditUiEvent.saveEssay() = SaveEssay;

  const factory EditUiEvent.showErrorMessage(String message) = ShowErrorMessage;
}
