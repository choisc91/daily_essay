import 'package:daily_essay/data/data_souce/database_helper.dart';
import 'package:daily_essay/data/data_souce/pickup_picture.dart';
import 'package:daily_essay/data/repository/database_repository_impl.dart';
import 'package:daily_essay/data/repository/picture_repository_impl.dart';
import 'package:daily_essay/domain/use_case/essay/delete_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/essay/get_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/essay/get_essays_use_case.dart';
import 'package:daily_essay/domain/use_case/essay/insert_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/essay/update_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/essay_use_cases.dart';
import 'package:daily_essay/domain/use_case/picture/get_gallery_picture_use_case.dart';
import 'package:daily_essay/domain/use_case/picture/get_shoot_picture_use_case.dart';
import 'package:daily_essay/domain/use_case/picture_use_cases.dart';
import 'package:daily_essay/presentation/home/home_view_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sqflite/sqflite.dart';

Future<List<SingleChildWidget>> getProviders() async {
  final database = await openDatabase('essay_db', version: 1, onCreate: (db, version) async {
    await db.execute('CREATE TABLE essay (id INTEGER PRIMARY KEY AUTOINCREMENT, '
        'title TEXT, content TEXT, path TEXT, color INTEGER, timestamp INTEGER)');
  });

  final helper = DatabaseHelper(database);
  final databaseRepo = DatabaseRepositoryImpl(helper);

  final essayUseCases = EssayUseCases(
    getEssay: GetEssayUseCase(databaseRepo),
    getEssays: GetEssaysUseCase(databaseRepo),
    insertEssay: InsertEssayUseCase(databaseRepo),
    updateEssay: UpdateEssayUseCase(databaseRepo),
    deleteEssay: DeleteEssayUseCase(databaseRepo),
  );

  final pickupPicture = PickupPicture(ImagePicker());
  final pictureRepo = PictureRepositoryImpl(pickupPicture);

  final pictureUsecases = PictureUseCases(
    getGalleryPicture: GetGalleryPictureUseCase(pictureRepo),
    getShootPicture: GetShootPictureUseCase(pictureRepo),
  );

  // todo edit 뷰모델 작성 후 수정 요.

  final homeViewModel = HomeViewModel(essayUseCases);

  return [
    ChangeNotifierProvider(create: (context) => homeViewModel),
  ];
}
