import 'package:daily_essay/domain/model/essay.dart';

abstract class DatabaseRepository {
  //
  Future<List<Essay>> getEssays();

  Future<Essay?> getEssayById(int id);

  Future<void> insertEssay(Essay item);

  Future<void> updateEssay(Essay item);

  Future<void> deleteEssay(Essay item);
}
