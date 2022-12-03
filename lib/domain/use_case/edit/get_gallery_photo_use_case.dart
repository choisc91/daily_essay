import 'package:daily_essay/domain/repository/photo_repository.dart';
import 'package:image_picker/image_picker.dart';

class GetGalleryPhotoUseCase {
  //
  PictureRepository repository;

  GetGalleryPhotoUseCase(this.repository);

  Future<String?> call() async {
    final XFile? result = await repository.getGalleryPicture();
    return (result != null) ? result.path : null;
  }
}
