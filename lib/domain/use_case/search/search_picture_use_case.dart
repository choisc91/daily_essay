import 'package:daily_essay/data/datasource/result.dart';
import 'package:daily_essay/domain/model/pix_picture.dart';
import 'package:daily_essay/domain/repository/search_repository.dart';

class SearchPictureUseCase {
  final SearchRepository repository;

  SearchPictureUseCase(this.repository);

  Future<Result<List<PixaPicture>>> call(String query) async {
    final Result<List<PixaPicture>> result = await repository.fetch(query);
    return result.when(
      success: (pictures) => Result.success(pictures),
      error: (message) => Result.error(message),
    );
  }
}
