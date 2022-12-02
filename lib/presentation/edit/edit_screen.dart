import 'package:daily_essay/domain/model/essay.dart';
import 'package:flutter/material.dart';

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
  @override
  void initState() {
    super.initState();
    // todo 인자로 들어온 에세이 null 체크 후, 널이 아닐 경우 데이터 삽입 과정.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _buildFab(context),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Stack(
      alignment: Alignment.center,
      children: [
        // background.
        Container(),
        // contents.
        const Expanded(
          child: TextField(
            maxLines: null,
            style: TextStyle(),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'here',
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFab(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      child: const Icon(Icons.photo, color: Colors.black),
      onPressed: () async {
        // todo 다이얼로그 띄어서 사진을 직접 촬영할 것인지 갤러리에서 가지고 올 것인지 선택 받는 구문 필요.
      },
    );
  }
}
