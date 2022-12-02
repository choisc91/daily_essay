import 'package:daily_essay/domain/model/essay.dart';
import 'package:daily_essay/domain/repository/database_repository.dart';

class DeleteEssayUseCase {
  //
  final DatabaseRepository repository;

  DeleteEssayUseCase(this.repository);

  Future<void> call(Essay item) async {
    await repository.deleteEssay(item);
  }
}
