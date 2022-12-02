import 'package:daily_essay/domain/use_case/essay/delete_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/essay/get_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/essay/get_essays_use_case.dart';
import 'package:daily_essay/domain/use_case/essay/insert_essay_use_case.dart';
import 'package:daily_essay/domain/use_case/essay/update_essay_use_case.dart';

class EssayUseCases {
  final GetEssayUseCase getEssay;
  final GetEssaysUseCase getEssays;
  final InsertEssayUseCase insertEssay;
  final UpdateEssayUseCase updateEssay;
  final DeleteEssayUseCase deleteEssay;

  EssayUseCases({
    required this.getEssay,
    required this.getEssays,
    required this.insertEssay,
    required this.updateEssay,
    required this.deleteEssay,
  });
}
