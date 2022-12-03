import 'package:daily_essay/domain/model/download_picture.dart';
import 'package:flutter/material.dart';

class PreviewItem extends StatelessWidget {
  final DownloadPicture picture;

  const PreviewItem({Key? key, required this.picture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(picture.largeImageURL),
        ),
      ),
    );
  }
}
