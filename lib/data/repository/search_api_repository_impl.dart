import 'package:daily_essay/data/datasource/downloder_helper.dart';
import 'package:daily_essay/data/datasource/result.dart';
import 'package:daily_essay/data/datasource/search_api.dart';
import 'package:daily_essay/domain/model/picture.dart';
import 'package:daily_essay/domain/repository/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchApi _api;

  final DownloadHelper _downloadHelper;

  SearchRepositoryImpl(this._api, this._downloadHelper);

  @override
  Future<Result<List<Picture>>> fetch(String query) async {
    final Result<Iterable> result = await _api.fetch(query);
    return result.when(
      success: (iterable) {
        return Result.success(iterable.map((e) => Picture.fromJson(e)).toList());
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }

  @override
  Future<String?> downloadImage(String url) {
    return _downloadHelper(url);
  }
}
