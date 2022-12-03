import 'package:daily_essay/domain/use_case/home/delete_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/home/get_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/home/get_essays_use_case.dart';

class HomeUseCases {
  final GetEssayUseCase getEssay;
  final GetEssaysUseCase getEssays;
  final DeleteEssayUseCase deleteEssay;

  HomeUseCases({
    required this.getEssay,
    required this.getEssays,
    required this.deleteEssay,
  });
}
