import 'package:daily_essay/domain/model/pix_picture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_event.freezed.dart';

@Freezed()
abstract class DownloadEvent with _$DownloadEvent {
  const factory DownloadEvent.downloadPicture(PixaPicture item) = DownloadPicture;
}
