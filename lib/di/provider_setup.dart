import 'package:daily_essay/data/data_souce/essay_database_helper.dart';
import 'package:daily_essay/data/repository/essay_repository_impl.dart';
import 'package:daily_essay/domain/use_case/use_cases.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sqflite/sqflite.dart';

Future<List<SingleChildWidget>> getProviders() async {
  final database = await openDatabase('essay_db', version: 1, onCreate: (db, version) async {
    await db.execute('CREATE TABLE note (id INTEGER PRIMARY KEY AUTOINCREMENT, '
        'title TEXT, content TEXT, path TEXT, color INTEGER, timestamp INTEGER)');
  });

  final helper = EssayDatabaseHelper(database);
  final repository = EssayRepositoryImpl(helper);
  final useCases = UseCases();

  return [
    // todo setup providers.
  ];
}
