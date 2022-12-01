import 'package:daily_essay/data/data_souce/essay_database_helper.dart';
import 'package:daily_essay/domain/model/essay.dart';
import 'package:daily_essay/domain/repository/essay_repository.dart';

class EssayRepositoryImpl implements EssayRepository {
  //
  final EssayDatabaseHelper helper;

  EssayRepositoryImpl(this.helper);

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
