import 'package:daily_essay/domain/model/pix_picture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@Freezed()
class SearchState with _$SearchState {
  factory SearchState(
    bool isLoading,
    List<PixaPicture> pictures,
  ) = _SearchState;
}
