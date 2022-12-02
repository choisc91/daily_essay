import 'package:daily_essay/data/data_souce/database_helper.dart';
import 'package:daily_essay/data/repository/database_repository_impl.dart';
import 'package:daily_essay/domain/use_case/essay/delete_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/essay/get_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/essay/get_essays_use_case.dart';
import 'package:daily_essay/domain/use_case/essay/insert_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/essay/update_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/essay_use_cases.dart';
import 'package:daily_essay/presentation/home/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sqflite/sqflite.dart';

Future<List<SingleChildWidget>> getProviders() async {
  final database = await openDatabase('essay_db', version: 1, onCreate: (db, version) async {
    await db.execute('CREATE TABLE essay (id INTEGER PRIMARY KEY AUTOINCREMENT, '
        'title TEXT, content TEXT, path TEXT, color INTEGER, timestamp INTEGER)');
  });

  final helper = DatabaseHelper(database);
  final repository = DatabaseRepositoryImpl(helper);

  final essayUseCases = EssayUseCases(
    getEssay: GetEssayUseCase(repository),
    getEssays: GetEssaysUseCase(repository),
    insertEssay: InsertEssayUseCase(repository),
    updateEssay: UpdateEssayUseCase(repository),
    deleteEssay: DeleteEssayUseCase(repository),
  );

  final homeViewModel = HomeViewModel(essayUseCases);

  return [
    ChangeNotifierProvider(create: (context) => homeViewModel),
  ];
}
