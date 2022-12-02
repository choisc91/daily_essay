import 'package:daily_essay/domain/repository/picture_repository.dart';
import 'package:image_picker/image_picker.dart';

class GetShootPictureUseCase {
  PictureRepository repository;

  GetShootPictureUseCase(this.repository);

  Future<String?> call() async {
    final XFile? result = await repository.getShootPicture();
    return (result != null) ? result.path : null;
  }
}
