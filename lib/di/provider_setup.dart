import 'package:daily_essay/data/datasource/database_helper.dart';
import 'package:daily_essay/data/datasource/download_helper.dart';
import 'package:daily_essay/data/datasource/pickup_photo.dart';
import 'package:daily_essay/data/datasource/search_api.dart';
import 'package:daily_essay/data/repository/database_repository_impl.dart';
import 'package:daily_essay/data/repository/download_repository_impl.dart';
import 'package:daily_essay/data/repository/photo_repository_impl.dart';
import 'package:daily_essay/data/repository/search_api_repository_impl.dart';
import 'package:daily_essay/domain/use_case/download_use_cases.dart';
import 'package:daily_essay/domain/use_case/edit/get_gallery_photo_use_case.dart';
import 'package:daily_essay/domain/use_case/edit/shot_photo_use_case.dart';
import 'package:daily_essay/domain/use_case/edit/insert_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/edit/update_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/home/delete_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/home/get_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/home/get_essays_use_case.dart';
import 'package:daily_essay/domain/use_case/home_use_cases.dart';
import 'package:daily_essay/domain/use_case/edit_use_cases.dart';
import 'package:daily_essay/domain/use_case/download/download_use_case.dart';
import 'package:daily_essay/domain/use_case/search/search_picture_use_case.dart';
import 'package:daily_essay/domain/use_case/search_use_cases.dart';
import 'package:daily_essay/presentation/download/download_view_model.dart';
import 'package:daily_essay/presentation/edit/edit_view_model.dart';
import 'package:daily_essay/presentation/home/home_view_model.dart';
import 'package:daily_essay/presentation/search/search_view_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sqflite/sqflite.dart';
import 'package:http/http.dart' as http;

Future<List<SingleChildWidget>> getProviders() async {
  // build database.
  final database = await openDatabase('essay_db', version: 1, onCreate: (db, version) async {
    await db.execute('CREATE TABLE essay (id INTEGER PRIMARY KEY AUTOINCREMENT, '
        'essay TEXT, path TEXT, timestamp INTEGER)');
  });

  // datasource.
  final databaseHelper = DatabaseHelper(database);
  final searchApi = SearchApi(http.Client());
  final pickupPhoto = PickupPhoto(ImagePicker());
  final downloadHelper = DownloadHelper();

  // repository.
  final databaseRepository = DatabaseRepositoryImpl(databaseHelper);
  final photoRepository = PhotoRepositoryImpl(pickupPhoto);
  final searchRepository = SearchRepositoryImpl(searchApi);
  final downloadRepository = DownloadRepositoryImpl(downloadHelper);

  // use cases.
  final homeUseCases = HomeUseCases(
    getEssay: GetEssayUseCase(databaseRepository),
    getEssays: GetEssaysUseCase(databaseRepository),
    deleteEssay: DeleteEssayUseCase(databaseRepository),
  );

  final editUseCases = EditUseCases(
    getGalleryPicture: GetGalleryPhotoUseCase(photoRepository),
    getShootPicture: ShotPhotoUseCase(photoRepository),
    insertEssay: InsertEssayUseCase(databaseRepository),
    updateEssay: UpdateEssayUseCase(databaseRepository),
  );

  final searchUseCases = SearchUseCases(
    searchPicture: SearchPictureUseCase(searchRepository),
  );

  final downloadUseCases = DownloadUseCases(
    download: DownloadUseCase(downloadRepository),
  );

  // view models.
  final homeViewModel = HomeViewModel(homeUseCases);
  final editViewModel = EditViewModel(editUseCases);
  final searchViewModel = SearchViewModel(searchUseCases);
  final downloadViewModel = DownloadViewModel(downloadUseCases);

  return [
    ChangeNotifierProvider(create: (context) => homeViewModel),
    ChangeNotifierProvider(create: (context) => editViewModel),
    ChangeNotifierProvider(create: (context) => searchViewModel),
    ChangeNotifierProvider(create: (context) => downloadViewModel),
  ];
}
