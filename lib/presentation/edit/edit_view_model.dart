import 'dart:async';

import 'package:daily_essay/domain/model/essay.dart';
import 'package:daily_essay/domain/use_case/home_use_cases.dart';
import 'package:daily_essay/domain/use_case/edit_use_cases.dart';
import 'package:daily_essay/presentation/edit/edit_event.dart';
import 'package:daily_essay/presentation/edit/edit_state.dart';
import 'package:daily_essay/presentation/edit/edit_ui_event.dart';
import 'package:flutter/cupertino.dart';

class EditViewModel with ChangeNotifier {
  final EditUseCases useCases;

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
        setPicture(path);
      },
      getGalleryPicture: () async {
        final String? path = await useCases.getGalleryPicture();
        setPicture(path);
      },
      addEssay: _addEssay,
      clearState: _clearPath,
    );
  }

  void _clearPath() {
    _state = _state.copyWith(path: '');
    notifyListeners();
  }

  void setPicture(String? path) {
    if (path != null) {
      _state = _state.copyWith(path: path);
      notifyListeners();
    }
  }

  Future<void> _addEssay(int? id, String essay, String path) async {
    if (essay.isEmpty) {
      _eventCtrl.add(const EditUiEvent.showErrorMessage('oh please write an essay'));
      return;
    }

    if (id == null) {
      await useCases.insertEssay(
        Essay(
          essay: essay,
          path: path,
          timestamp: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    } else {
      await useCases.updateEssay(
        Essay(
          id: id,
          essay: essay,
          path: path,
          timestamp: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    }
    _eventCtrl.add(const EditUiEvent.saveEssay());
  }
}
