import 'dart:async';
import 'dart:io';

import 'package:daily_essay/domain/model/essay.dart';
import 'package:daily_essay/presentation/edit/edit_event.dart';
import 'package:daily_essay/presentation/edit/edit_view_model.dart';
import 'package:daily_essay/presentation/search/search_event.dart';
import 'package:daily_essay/presentation/search/search_screen.dart';
import 'package:daily_essay/presentation/search/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditScreen extends StatefulWidget {
  //
  final Essay? item;

  const EditScreen({
    Key? key,
    this.item,
  }) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final _essayCtrl = TextEditingController();

  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();
    _setUiEvent();
  }

  @override
  void dispose() {
    _essayCtrl.dispose();
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<EditViewModel>();
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      floatingActionButton: _buildFab(context, viewModel),
      body: _buildBody(viewModel),
    );
  }

  Widget _buildBody(EditViewModel viewModel) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          decoration: (viewModel.state.path.isNotEmpty)
              ? BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.4), BlendMode.dstATop),
                    image: FileImage(
                      File(viewModel.state.path),
                    ),
                  ),
                )
              : null,
          child: TextField(
            controller: _essayCtrl,
            maxLines: null,
            style: const TextStyle(
              height: 2.0,
              fontSize: 12.0,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              hintText: 'how\'s today',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
          ),
        ),
        // todo, Positioned 를 넣지 않으면 위치를 못잡고 팽창해 버림. 더 나은 구조 발견시 변경 바람.
        Positioned(
          left: .0,
          right: .0,
          child: AppBar(
            elevation: .0,
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                icon: const Icon(Icons.check),
                onPressed: () {
                  final int? id = widget.item == null ? null : widget.item!.id;
                  viewModel.onEvent(EditEvent.addEssay(id, _essayCtrl.text, viewModel.state.path));
                },
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFab(BuildContext context, EditViewModel viewModel) {
    final searchViewModel = context.watch<SearchViewModel>();
    return FloatingActionButton(
      backgroundColor: Colors.white,
      child: const Icon(Icons.photo, color: Colors.black),
      onPressed: () async {
        final String? type = await showDialog(
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
                  _buildSelectMenu(context, 'gallery'),
                  const SizedBox(height: 8.0),
                  _buildSelectMenu(context, 'download'),
                ],
              ),
            );
          },
        );

        if (type != null) {
          switch (type) {
            case 'camera':
              viewModel.onEvent(const EditEvent.getShootPicture());
              break;
            case 'gallery':
              viewModel.onEvent(const EditEvent.getGalleryPicture());
              break;
            case 'download':
              await Navigator.push(this.context, MaterialPageRoute(builder: (context) => const SearchScreen()));
              searchViewModel.onEvent(const SearchEvent.clearState());
              break;
          }
        }
      },
    );
  }

  Widget _buildSelectMenu(BuildContext context, String type) {
    IconData iconData = Icons.install_mobile;
    switch (type) {
      case 'camera':
        iconData = Icons.camera_alt;
        break;
      case 'gallery':
        iconData = Icons.photo;
        break;
    }

    return FloatingActionButton.extended(
      backgroundColor: Colors.white,
      label: Row(
        children: [
          Icon(iconData, size: 24.0, color: Colors.black),
          const SizedBox(width: 4.0),
          Text('$type ?', style: const TextStyle(color: Colors.black)),
        ],
      ),
      onPressed: () {
        Navigator.of(context).pop(type);
      },
    );
  }

  void _setUiEvent() {
    Future.microtask(() {
      final viewModel = context.read<EditViewModel>();
      // edit & new.
      if (widget.item != null) {
        viewModel.setPicture(widget.item!.path);
        _essayCtrl.text = widget.item!.essay;
      }

      _subscription = viewModel.eventStream.listen((event) {
        event.when(
          saveEssay: () => Navigator.of(context).pop(true),
          showErrorMessage: (String message) {
            final snackBar = SnackBar(content: Text(message));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        );
      });
    });
  }
}
