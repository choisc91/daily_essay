import 'package:flutter/services.dart';
import 'package:image_downloader/image_downloader.dart';

class DownloadHelper {
  Future<String?> call(String url) async {
    try {
      final imageId = await ImageDownloader.downloadImage(url);
      return imageId;
      // final fileName = await ImageDownloader.findName(imageId);
      // final path = await ImageDownloader.findPath(imageId);
      // final size = await ImageDownloader.findByteSize(imageId);
      // final mimeType = await ImageDownloader.findMimeType(imageId);
    } on PlatformException catch (error) {
      return null;
    }
  }
}
