import 'package:daily_essay/domain/use_case/search_use_cases.dart';
import 'package:flutter/material.dart';

class SearchViewModel with ChangeNotifier {
  SearchUseCases useCases;

  SearchViewModel(this.useCases);
}
