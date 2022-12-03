import 'dart:async';

import 'package:daily_essay/domain/model/pix_picture.dart';
import 'package:daily_essay/domain/use_case/download_use_cases.dart';
import 'package:daily_essay/presentation/download/download_event.dart';
import 'package:daily_essay/presentation/download/download_state.dart';
import 'package:daily_essay/presentation/download/download_ui_event.dart';
import 'package:flutter/material.dart';

class DownloadViewModel with ChangeNotifier {
  final DownloadUseCases _useCases;

  DownloadState _state = DownloadState(
    isLoading: false,
  );

  DownloadState get state => _state;

  final _eventCtrl = StreamController<DownloadUiEvent>.broadcast();

  get eventCtrl => _eventCtrl.stream;

  DownloadViewModel(this._useCases);

  void onEvent(DownloadEvent event) {
    event.when(
      downloadPicture: _downloadPicture,
    );
  }

  void _downloadPicture(PixaPicture item) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _useCases.download(item.largeImageURL);
    if (result != null) {
      _eventCtrl.add(const DownloadUiEvent.showMessage('Download success!'));
    } else {
      _eventCtrl.add(const DownloadUiEvent.showMessage('Download fail...'));
    }

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
