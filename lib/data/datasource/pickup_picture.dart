import 'package:image_picker/image_picker.dart';

class PickupPicture {
  //
  final ImagePicker imagePicker;

  PickupPicture(this.imagePicker);

  Future<XFile?> getCameraPicture() async {
    return await imagePicker.pickImage(source: ImageSource.camera);
  }

  Future<XFile?> getGalleryPicture() async {
    return await imagePicker.pickImage(source: ImageSource.gallery);
  }
}
