import 'package:freezed_annotation/freezed_annotation.dart';

part 'pix_picture.freezed.dart';

part 'pix_picture.g.dart';

@Freezed()
class PixaPicture with _$PixaPicture {
  factory PixaPicture({
    required int id,
    required String tags,
    required String largeImageURL,
  }) = _PixaPicture;

  factory PixaPicture.fromJson(Map<String, dynamic> json) => _$PixaPictureFromJson(json);
}
