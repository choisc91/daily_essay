import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_ui_event.freezed.dart';

@Freezed()
abstract class DownloadUiEvent with _$DownloadUiEvent {
  const factory DownloadUiEvent.showMessage(String message) = ShowMessage;
}
