import 'package:daily_essay/domain/model/essay.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@Freezed()
abstract class HomeEvent with _$HomeEvent {
  //
  const factory HomeEvent.refreshEssay() = RefreshEssay;

  const factory HomeEvent.deleteEssay(Essay item) = DeleteEssay;
}
