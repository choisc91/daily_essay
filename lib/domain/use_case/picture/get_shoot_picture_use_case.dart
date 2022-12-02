import 'package:daily_essay/domain/repository/picture_repository.dart';

class GetShootPictureUseCase {
  PictureRepository repository;

  GetShootPictureUseCase(this.repository);

  Future<void> call() async {
    await repository.getShootPicture();
  }
}
