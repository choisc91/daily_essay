import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_event.freezed.dart';

@Freezed()
abstract class EditEvent with _$EditEvent {
  //
  const factory EditEvent.addEssay(int? id, String essay, String path) = AddEssay;

  const factory EditEvent.getShootPicture() = GetShootPicture;

  const factory EditEvent.getGalleryPicture() = GetGalleryPicture;
}
