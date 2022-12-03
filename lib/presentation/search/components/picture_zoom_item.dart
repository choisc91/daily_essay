import 'package:daily_essay/domain/model/pix_picture.dart';
import 'package:flutter/material.dart';

class PictureItem extends StatelessWidget {
  final PixaPicture item;

  const PictureItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(item.largeImageURL),
        ),
      ),
    );
  }
}
