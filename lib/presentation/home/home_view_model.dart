import 'package:daily_essay/domain/model/essay.dart';
import 'package:daily_essay/domain/use_case/home_use_cases.dart';
import 'package:daily_essay/presentation/home/home_event.dart';
import 'package:daily_essay/presentation/home/home_state.dart';
import 'package:flutter/cupertino.dart';

class HomeViewModel with ChangeNotifier {
  //
  final HomeUseCases useCases;

  HomeViewModel(this.useCases) {
    _refreshEssay();
  }

  HomeState _state = HomeState(
    essays: [],
  );

  HomeState get state => _state;

  void onEvent(HomeEvent event) {
    event.when(
      refreshEssay: _refreshEssay,
      deleteEssay: _deleteEssay,
    );
  }

  Future<void> _refreshEssay() async {
    final essays = await useCases.getEssays();
    _state = _state.copyWith(essays: essays);
    notifyListeners();
  }

  Future<void> _deleteEssay(Essay item) async {
    await useCases.deleteEssay(item);
    await _refreshEssay();
  }
}
