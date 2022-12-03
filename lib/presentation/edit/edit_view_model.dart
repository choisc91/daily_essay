import 'dart:async';

import 'package:daily_essay/domain/use_case/picture_use_cases.dart';
import 'package:daily_essay/presentation/edit/edit_event.dart';
import 'package:daily_essay/presentation/edit/edit_state.dart';
import 'package:daily_essay/presentation/edit/edit_ui_event.dart';
import 'package:flutter/cupertino.dart';

class EditViewModel with ChangeNotifier {
  //
  final PictureUseCases useCases;

  // 상태 관리.
  EditState _state = EditState(path: '');

  EditState get state => _state;

  final _eventCtrl = StreamController<EditUiEvent>.broadcast();

  Stream<EditUiEvent> get eventStream => _eventCtrl.stream;

  EditViewModel(this.useCases);

  void onEvent(EditEvent event) {
    event.when(
      getShootPicture: () async {
        final String? path = await useCases.getShootPicture();
        _setPicture(path);
      },
      getGalleryPicture: () async {
        final String? path = await useCases.getGalleryPicture();
        _setPicture(path);
      },
      addEssay: _addEssay,
    );
  }

  void _setPicture(String? path) {
    if (path != null) {
      _state = _state.copyWith(path: path);
      notifyListeners();
    }
  }

  void _addEssay() {
    // todo, 관련 로직 작성.
    _eventCtrl.add(const EditUiEvent.saveEssay());
  }
}
