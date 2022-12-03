import 'package:daily_essay/domain/model/essay.dart';
import 'package:daily_essay/domain/repository/database_repository.dart';

class GetEssayUseCase {
  //
  final DatabaseRepository repository;

  GetEssayUseCase(this.repository);

  Future<Essay?> call(int id) async {
    return await repository.getEssayById(id);
  }
}