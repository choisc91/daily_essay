import 'package:daily_essay/domain/repository/picture_repository.dart';
import 'package:image_picker/image_picker.dart';

class GetGalleryPictureUseCase {
  //
  PictureRepository repository;

  GetGalleryPictureUseCase(this.repository);

  Future<String?> call() async {
    final XFile? result = await repository.getGalleryPicture();
    return (result != null) ? result.path : null;
  }
}
