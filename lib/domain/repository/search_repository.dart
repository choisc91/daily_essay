import 'package:daily_essay/data/datasource/result.dart';
import 'package:daily_essay/domain/model/pix_picture.dart';

abstract class SearchRepository {
  Future<Result<List<PixaPicture>>> fetch(String query);

  Future<String?> downloadImage(String url);
}
