import 'package:daily_essay/domain/use_case/picture/get_gallery_picture_use_case.dart';
import 'package:daily_essay/domain/use_case/picture/get_shoot_picture_use_case.dart';

class PictureUseCases {
  //
  final GetShootPictureUseCase getShootPicture;
  final GetGalleryPictureUseCase getGalleryPicture;

  PictureUseCases({
    required this.getShootPicture,
    required this.getGalleryPicture,
  });
}
