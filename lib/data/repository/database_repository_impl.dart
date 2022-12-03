import 'package:daily_essay/data/datasource/database_helper.dart';
import 'package:daily_essay/domain/model/essay.dart';
import 'package:daily_essay/domain/repository/database_repository.dart';

class DatabaseRepositoryImpl implements DatabaseRepository {
  //
  final DatabaseHelper helper;

  DatabaseRepositoryImpl(this.helper);

  @override
  Future<void> deleteEssay(Essay item) async {
    return await helper.deleteEssay(item);
  }

  @override
  Future<Essay?> getEssayById(int id) async {
    return await helper.getNoteById(id);
  }

  @override
  Future<List<Essay>> getEssays() async {
    return await helper.getEssays();
  }

  @override
  Future<void> insertEssay(Essay item) async {
    return await helper.insertEssay(item);
  }

  @override
  Future<void> updateEssay(Essay item) async {
    return await helper.updateEssay(item);
  }
}
