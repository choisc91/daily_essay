import 'package:daily_essay/data/datasource/result.dart';
import 'package:daily_essay/domain/model/download_picture.dart';

abstract class SearchRepository {
  Future<Result<List<DownloadPicture>>> fetch(String query);

  Future<String?> downloadImage(String url);
}
