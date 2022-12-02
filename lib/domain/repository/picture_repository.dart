import 'package:image_picker/image_picker.dart';

abstract class PictureRepository {
  //
  Future<XFile?> getCameraPicture();

  Future<XFile?> getGalleryPicture();
}
