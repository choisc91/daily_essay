import 'package:daily_essay/domain/use_case/picture_use_cases.dart';
import 'package:flutter/cupertino.dart';

class EditViewModel with ChangeNotifier {
  //
  final PictureUseCases useCases;

  EditViewModel(this.useCases);
}
