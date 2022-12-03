import 'package:daily_essay/domain/use_case/edit/get_gallery_photo_use_case.dart';
import 'package:daily_essay/domain/use_case/edit/shot_photo_use_case.dart';
import 'package:daily_essay/domain/use_case/edit/insert_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/edit/update_essay_use_case.dart';

class EditUseCases {
  final ShotPhotoUseCase getShootPicture;
  final GetGalleryPhotoUseCase getGalleryPicture;
  final InsertEssayUseCase insertEssay;
  final UpdateEssayUseCase updateEssay;

  EditUseCases({
    required this.getShootPicture,
    required this.getGalleryPicture,
    required this.insertEssay,
    required this.updateEssay,
  });
}
