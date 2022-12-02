import 'package:daily_essay/presentation/home/home_state.dart';
import 'package:flutter/cupertino.dart';

class HomeViewModel with ChangeNotifier {
  //
  HomeState _state = HomeState(
    essays: [],
  );

  HomeState get state => _state;

  
}
