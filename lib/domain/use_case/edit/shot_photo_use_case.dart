import 'package:daily_essay/domain/repository/photo_repository.dart';
import 'package:image_picker/image_picker.dart';

class ShotPhotoUseCase {
  PictureRepository repository;

  ShotPhotoUseCase(this.repository);

  Future<String?> call() async {
    final XFile? result = await repository.getShootPicture();
    return (result != null) ? result.path : null;
  }
}
