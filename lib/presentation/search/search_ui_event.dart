import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_ui_event.freezed.dart';

@Freezed()
abstract class SearchUiEvent with _$SearchUiEvent {
  const factory SearchUiEvent.showErrorMessage(String message) = ShowErrorMessage;
}
