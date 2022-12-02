import 'dart:io';

import 'package:daily_essay/domain/model/essay.dart';
import 'package:daily_essay/presentation/edit/edit_event.dart';
import 'package:daily_essay/presentation/edit/edit_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditScreen extends StatefulWidget {
  final Essay? item;

  const EditScreen({
    Key? key,
    this.item,
  }) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final _question = [
    'how\'s today',
  ];

  @override
  void initState() {
    super.initState();
    // todo 인자로 들어온 에세이 null 체크 후, 널이 아닐 경우 데이터 삽입 과정.
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<EditViewModel>();
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: _buildFab(context, viewModel),
      body: _buildBody(viewModel),
    );
  }

  Widget _buildBody(EditViewModel viewModel) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.4), BlendMode.dstATop),
          image: FileImage(
            File(viewModel.state.path),
          ),
        ),
      ),
      child: const TextField(
        maxLines: null,
        style: TextStyle(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: 'how\'s today',
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );

    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        if (viewModel.state.path.isNotEmpty)
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: FileImage(
                  File(viewModel.state.path),
                ),
              ),
            ),
          ),
        TextField(
          maxLines: null,
          style: TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: 'how\'s today',
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
          ),
        ),
        // background.
        AppBar(
          backgroundColor: Colors.transparent,
          elevation: .0,
        ),
      ],
    );
  }

  Widget _buildFab(BuildContext context, EditViewModel viewModel) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      child: const Icon(Icons.photo, color: Colors.black),
      onPressed: () async {
        final String type = await showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              backgroundColor: Colors.transparent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSelectMenu(context, 'camera'),
                  const SizedBox(height: 8.0),
                  _buildSelectMenu(context, 'gallery')
                ],
              ),
            );
          },
        );
        // todo 다이얼로그 띄어서 사진을 직접 촬영할 것인지 갤러리에서 가지고 올 것인지 선택 받는 구문 필요.
        if (type == 'camera') {
          viewModel.onEvent(const EditEvent.getShootPicture());
        } else {
          viewModel.onEvent(const EditEvent.getGalleryPicture());
        }
      },
    );
  }

  Widget _buildSelectMenu(BuildContext context, String type) {
    final icon = (type == 'camera') ? Icons.camera_alt : Icons.photo;
    return FloatingActionButton.extended(
      backgroundColor: Colors.white,
      label: Row(
        children: [
          Icon(icon, size: 24.0, color: Colors.black),
          const SizedBox(width: 4.0),
          Text('$type ?', style: const TextStyle(color: Colors.black)),
        ],
      ),
      onPressed: () {
        Navigator.of(context).pop(type);
      },
    );
  }
}
