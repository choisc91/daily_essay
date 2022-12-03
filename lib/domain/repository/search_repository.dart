import 'package:daily_essay/data/datasource/result.dart';
import 'package:daily_essay/domain/model/picture.dart';

abstract class SearchRepository {
  Future<Result<List<Picture>>> fetch(String query);
}
