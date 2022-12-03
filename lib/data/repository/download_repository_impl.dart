import 'package:daily_essay/data/datasource/download_helper.dart';
import 'package:daily_essay/domain/repository/download_repository.dart';

class DownloadRepositoryImpl implements DownloadRepository {
  final DownloadHelper _downloadHelper;

  DownloadRepositoryImpl(this._downloadHelper);

  @override
  Future<String?> downloadImage(String url) {
    return _downloadHelper(url);
  }
}
