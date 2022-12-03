import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_downloader/image_downloader.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  void initState() {
    super.initState();
    _downloadImage();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  // 정상 작동 확인.
  void _downloadImage() async {
    try {
      const imageUrl =
          'https://pixabay.com/get/g270b7815bff2b2b7dac74ff5dd34a72f7c641f58eab75bf7418a98a785e7142e40a26a9922be0f3ab93296c479bdd1281f052f8f040e6868fd731c84f1e38afd_1280.jpg%22';

      var imageId = await ImageDownloader.downloadImage(imageUrl);
      if (imageId == null) {
        return;
      }

      // Below is a method of obtaining saved image information.
      var fileName = await ImageDownloader.findName(imageId);
      var path = await ImageDownloader.findPath(imageId);
      var size = await ImageDownloader.findByteSize(imageId);
      var mimeType = await ImageDownloader.findMimeType(imageId);
    } on PlatformException catch (error) {
      print(error);
    }
  }
}
