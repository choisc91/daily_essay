import 'package:daily_essay/domain/model/essay.dart';
import 'package:daily_essay/domain/repository/database_repository.dart';

class InsertEssayUseCase {
  DatabaseRepository repository;

  InsertEssayUseCase(this.repository);

  Future<void> call(Essay item) async {
    await repository.insertEssay(item);
  }
}
