import 'package:daily_essay/domain/repository/download_repository.dart';

class DownloadUseCase {
  final DownloadRepository repository;

  DownloadUseCase(this.repository);

  Future<String?> call(String url) async {
    return repository.downloadImage(url);
  }
}
