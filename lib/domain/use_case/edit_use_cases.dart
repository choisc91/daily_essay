import 'package:daily_essay/domain/use_case/edit/get_gallery_picture_use_case.dart';
import 'package:daily_essay/domain/use_case/edit/get_shoot_picture_use_case.dart';
import 'package:daily_essay/domain/use_case/edit/insert_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/edit/update_essay_use_case.dart';

class EditUseCases {
  final GetShootPictureUseCase getShootPicture;
  final GetGalleryPictureUseCase getGalleryPicture;
  final InsertEssayUseCase insertEssay;
  final UpdateEssayUseCase updateEssay;

  EditUseCases({
    required this.getShootPicture,
    required this.getGalleryPicture,
    required this.insertEssay,
    required this.updateEssay,
  });
}
