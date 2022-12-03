import 'package:daily_essay/domain/model/download_picture.dart';
import 'package:flutter/material.dart';

class PictureItem extends StatelessWidget {
  final DownloadPicture picture;

  const PictureItem({Key? key, required this.picture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(picture.largeImageURL),
        ),
      ),
    );
  }
}
