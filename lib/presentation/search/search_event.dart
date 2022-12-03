import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.freezed.dart';

@Freezed()
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.clearState() = ClearState;

  const factory SearchEvent.downloadPicture(int index) = DownloadPicture;

  const factory SearchEvent.searchPicture(String query) = SearchPicture;
}
