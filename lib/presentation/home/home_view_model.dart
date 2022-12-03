import 'package:daily_essay/domain/use_case/home_use_cases.dart';
import 'package:daily_essay/presentation/home/home_state.dart';
import 'package:flutter/cupertino.dart';

class HomeViewModel with ChangeNotifier {
  //
  final HomeUseCases useCases;

  HomeViewModel(this.useCases);

  HomeState _state = HomeState(
    essays: [],
  );

  HomeState get state => _state;
}
