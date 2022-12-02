import 'package:daily_essay/domain/model/essay.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@Freezed()
abstract class HomeState with _$HomeState {
  factory HomeState({
    required List<Essay> essays,
  }) = _HomeState;
}
