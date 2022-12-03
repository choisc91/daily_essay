import 'package:daily_essay/domain/use_case/search_use_cases.dart';
import 'package:daily_essay/presentation/search/search_state.dart';
import 'package:flutter/material.dart';

class SearchViewModel with ChangeNotifier {
  SearchUseCases useCases;

  final SearchState _state = SearchState(false, []);

  SearchState get state => _state;

  SearchViewModel(this.useCases);
}
