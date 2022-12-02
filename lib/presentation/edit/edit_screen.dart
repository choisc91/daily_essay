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
    // todo
    return Scaffold();
  }
}
