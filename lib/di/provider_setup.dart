import 'package:daily_essay/data/datasource/database_helper.dart';
import 'package:daily_essay/data/datasource/downloder_helper.dart';
import 'package:daily_essay/data/datasource/pickup_photo.dart';
import 'package:daily_essay/data/datasource/search_api.dart';
import 'package:daily_essay/data/repository/database_repository_impl.dart';
import 'package:daily_essay/data/repository/photo_repository_impl.dart';
import 'package:daily_essay/data/repository/search_api_repository_impl.dart';
import 'package:daily_essay/domain/use_case/edit/get_gallery_photo_use_case.dart';
import 'package:daily_essay/domain/use_case/edit/shot_photo_use_case.dart';
import 'package:daily_essay/domain/use_case/edit/insert_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/edit/update_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/home/delete_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/home/get_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/home/get_essays_use_case.dart';
import 'package:daily_essay/domain/use_case/home_use_cases.dart';
import 'package:daily_essay/domain/use_case/edit_use_cases.dart';
import 'package:daily_essay/domain/use_case/search/download_use_case.dart';
import 'package:daily_essay/domain/use_case/search/search_picture_use_case.dart';
import 'package:daily_essay/domain/use_case/search_use_cases.dart';
import 'package:daily_essay/presentation/edit/edit_view_model.dart';
import 'package:daily_essay/presentation/home/home_view_model.dart';
import 'package:daily_essay/presentation/search/search_view_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sqflite/sqflite.dart';
import 'package:http/http.dart' as http;

Future<List<SingleChildWidget>> getProviders() async {
  final database = await openDatabase('essay_db', version: 1, onCreate: (db, version) async {
    await db.execute('CREATE TABLE essay (id INTEGER PRIMARY KEY AUTOINCREMENT, '
        'essay TEXT, path TEXT, timestamp INTEGER)');
  });

  final databaseHelper = DatabaseHelper(database);
  final databaseRepository = DatabaseRepositoryImpl(databaseHelper);

  final homeUseCases = HomeUseCases(
    getEssay: GetEssayUseCase(databaseRepository),
    getEssays: GetEssaysUseCase(databaseRepository),
    deleteEssay: DeleteEssayUseCase(databaseRepository),
  );

  final pickupPhoto = PickupPhoto(ImagePicker());
  final photoRepository = PhotoRepositoryImpl(pickupPhoto);

  final editUseCases = EditUseCases(
    getGalleryPicture: GetGalleryPhotoUseCase(photoRepository),
    getShootPicture: ShotPhotoUseCase(photoRepository),
    insertEssay: InsertEssayUseCase(databaseRepository),
    updateEssay: UpdateEssayUseCase(databaseRepository),
  );

  final searchApi = SearchApi(http.Client());
  final downloadHelper = DownloadHelper();
  final searchRepository = SearchRepositoryImpl(searchApi, downloadHelper);

  final searchUseCases = SearchUseCases(
    download: DownloadUseCase(searchRepository),
    searchPicture: SearchPictureUseCase(searchRepository),
  );

  final homeViewModel = HomeViewModel(homeUseCases);
  final editViewModel = EditViewModel(editUseCases);
  final searchViewModel = SearchViewModel(searchUseCases);

  return [
    ChangeNotifierProvider(create: (context) => homeViewModel),
    ChangeNotifierProvider(create: (context) => editViewModel),
    ChangeNotifierProvider(create: (context) => searchViewModel),
  ];
}
