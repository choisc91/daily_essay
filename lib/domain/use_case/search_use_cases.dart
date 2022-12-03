import 'package:daily_essay/domain/use_case/search/download_use_case.dart';
import 'package:daily_essay/domain/use_case/search/search_picture_use_case.dart';

class SearchUseCases {
  DownloadUseCase download;

  SearchPictureUseCase searchPicture;

  SearchUseCases({
    required this.download,
    required this.searchPicture,
  });
}
