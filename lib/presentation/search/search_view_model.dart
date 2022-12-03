import 'dart:async';

import 'package:daily_essay/domain/use_case/search_use_cases.dart';
import 'package:daily_essay/presentation/search/search_event.dart';
import 'package:daily_essay/presentation/search/search_state.dart';
import 'package:daily_essay/presentation/search/search_ui_event.dart';
import 'package:flutter/material.dart';

class SearchViewModel with ChangeNotifier {
  final SearchUseCases _useCases;

  final _eventCtrl = StreamController<SearchUiEvent>.broadcast();

  get eventCtrl => _eventCtrl.stream;

  SearchState _state = SearchState(false, []);

  SearchState get state => _state;

  SearchViewModel(this._useCases);

  void onEvent(SearchEvent event) {
    event.when(
      searchPicture: _fetch,
      clearState: _clearState,
    );
  }

  void _clearState() {
    _state = _state.copyWith(pictures: []);
    notifyListeners();
  }

  void _fetch(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _useCases.searchPicture(query);
    result.when(
      success: (pictures) {
        _state = state.copyWith(pictures: pictures);
      },
      error: (message) {
        _eventCtrl.add(SearchUiEvent.showErrorMessage(message));
      },
    );

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
