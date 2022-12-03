import 'package:daily_essay/data/datasource/result.dart';
import 'package:daily_essay/domain/model/download_picture.dart';
import 'package:daily_essay/domain/repository/search_repository.dart';

class SearchPictureUseCase {
  final SearchRepository repository;

  SearchPictureUseCase(this.repository);

  Future<Result<List<DownloadPicture>>> call(String query) async {
    final Result<List<DownloadPicture>> result = await repository.fetch(query);
    return result.when(
      success: (pictures) => Result.success(pictures),
      error: (message) => Result.error(message),
    );
  }
}
