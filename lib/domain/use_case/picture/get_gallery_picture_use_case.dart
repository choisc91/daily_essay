import 'package:daily_essay/domain/repository/picture_repository.dart';

class GetGalleryPictureUseCase {
  //
  PictureRepository repository;

  GetGalleryPictureUseCase(this.repository);

  Future<void> call() async {
    await repository.getGalleryPicture();
  }
}
