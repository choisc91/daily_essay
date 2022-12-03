import 'dart:io';

import 'package:daily_essay/domain/model/download_picture.dart';
import 'package:daily_essay/presentation/search/components/preview_item.dart';
import 'package:daily_essay/presentation/search/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DownloadScreen extends StatefulWidget {
  final int index;

  final List<DownloadPicture> pictures;

  const DownloadScreen({
    Key? key,
    required this.index,
    required this.pictures,
  }) : super(key: key);

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchViewModel>();
    final pageCtrl = PageController(initialPage: widget.index);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          PageView(
            controller: pageCtrl,
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
                    // todo 현재 인텍스의 아이템 가지고 와서 해당 아이템 다운로드.
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
