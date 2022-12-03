import 'package:image_picker/image_picker.dart';

abstract class PictureRepository {
  //
  Future<XFile?> getShootPicture();

  Future<XFile?> getGalleryPicture();
}
