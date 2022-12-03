import 'package:daily_essay/data/datasource/pickup_photo.dart';
import 'package:daily_essay/domain/repository/photo_repository.dart';
import 'package:image_picker/image_picker.dart';

class PhotoRepositoryImpl implements PictureRepository {
  //
  final PickupPhoto pickupPicture;

  PhotoRepositoryImpl(this.pickupPicture);

  @override
  Future<XFile?> getShootPicture() async {
    return await pickupPicture.getCameraPicture();
  }

  @override
  Future<XFile?> getGalleryPicture() async {
    return await pickupPicture.getGalleryPicture();
  }
}
