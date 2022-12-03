import 'dart:async';

import 'package:daily_essay/domain/model/pix_picture.dart';
import 'package:daily_essay/presentation/download/download_event.dart';
import 'package:daily_essay/presentation/download/download_view_model.dart';
import 'package:daily_essay/presentation/search/components/preview_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DownloadScreen extends StatefulWidget {
  final int index;

  final List<PixaPicture> pictures;

  const DownloadScreen({
    Key? key,
    required this.index,
    required this.pictures,
  }) : super(key: key);

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();
    _initEventStream();
  }

  @override
  void dispose() {
    super.dispose();
    _subscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<DownloadViewModel>();
    final pageCtrl = PageController(initialPage: widget.index);
    int currentIndex = widget.index;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          PageView(
            controller: pageCtrl,
            onPageChanged: (int index) => currentIndex = index,
            children: widget.pictures.map((e) {
              return PreviewItem(picture: e);
            }).toList(),
          ),
          // todo, Positioned 를 넣지 않으면 위치를 못잡고 팽창해 버림. 더 나은 구조 발견시 변경 바람.
          Positioned(
            left: .0,
            right: .0,
            child: AppBar(
              elevation: .0,
              backgroundColor: Colors.black45,
              actions: [
                IconButton(
                  icon: const Icon(Icons.download),
                  onPressed: () {
                    viewModel.onEvent(DownloadEvent.downloadPicture(widget.pictures[currentIndex]));
                  },
                )
              ],
            ),
          ),
          if (viewModel.state.isLoading) _buildProgressBar(),
        ],
      ),
    );
  }

  Widget _buildProgressBar() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      decoration: const BoxDecoration(color: Colors.black45),
      child: const CircularProgressIndicator(),
    );
  }

  void _initEventStream() {
    Future.microtask(() {
      final viewModel = context.read<DownloadViewModel>();
      _subscription = viewModel.eventCtrl.listen((event) {
        event.when(
          showMessage: (message) {
            final snackBar = SnackBar(content: Text(message));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        );
      });
    });
  }
}
