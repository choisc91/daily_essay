import 'package:daily_essay/data/data_souce/pickup_picture.dart';
import 'package:daily_essay/domain/repository/picture_repository.dart';
import 'package:image_picker/image_picker.dart';

class PictureRepositoryImpl implements PictureRepository {
  //
  final PickupPicture pickupPicture;

  PictureRepositoryImpl(this.pickupPicture);

  @override
  Future<XFile?> getShootPicture() async {
    return await pickupPicture.getCameraPicture();
  }

  @override
  Future<XFile?> getGalleryPicture() async {
    return await pickupPicture.getGalleryPicture();
  }
}
