import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_picture.freezed.dart';

part 'download_picture.g.dart';

@Freezed()
class DownloadPicture with _$DownloadPicture {
  factory DownloadPicture({
    required int id,
    required String tags,
    required String largeImageURL,
  }) = _Picture;

  factory DownloadPicture.fromJson(Map<String, dynamic> json) => _$DownloadPictureFromJson(json);
}
