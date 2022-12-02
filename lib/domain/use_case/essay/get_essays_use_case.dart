import 'package:daily_essay/domain/model/essay.dart';
import 'package:daily_essay/domain/repository/database_repository.dart';

class GetEssaysUseCase {
  //
  DatabaseRepository repository;

  GetEssaysUseCase(this.repository);

  Future<List<Essay>> call() async {
    return await repository.getEssays();
  }
}
