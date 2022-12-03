import 'package:daily_essay/domain/model/essay.dart';
import 'package:flutter/material.dart';

class EssayItem extends StatelessWidget {
  final Essay item;

  final Function onTap;

  const EssayItem({
    Key? key,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
