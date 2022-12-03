import 'package:daily_essay/domain/repository/search_repository.dart';

class DownloadUseCase {
  final SearchRepository repository;

  DownloadUseCase(this.repository);

  Future<String?> call(String url) async {
    return repository.downloadImage(url);
  }
}
