import 'package:image_picker/image_picker.dart';

class PickupPhoto {
  //
  final ImagePicker imagePicker;

  PickupPhoto(this.imagePicker);

  Future<XFile?> getCameraPicture() async {
    return await imagePicker.pickImage(source: ImageSource.camera);
  }

  Future<XFile?> getGalleryPicture() async {
    return await imagePicker.pickImage(source: ImageSource.gallery);
  }
}
