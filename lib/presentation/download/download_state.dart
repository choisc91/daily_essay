import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_state.freezed.dart';

@Freezed()
class DownloadState with _$DownloadState {
  factory DownloadState({
    required bool isLoading,
  }) = _DownloadState;
}
