import 'package:daily_essay/domain/model/essay.dart';
import 'package:daily_essay/domain/repository/database_repository.dart';

class UpdateEssayUseCase {
  //
  DatabaseRepository repository;

  UpdateEssayUseCase(this.repository);

  Future<void> call(Essay item) async {
    await repository.updateEssay(item);
  }
}
