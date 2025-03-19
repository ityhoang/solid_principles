import 'package:flutter/material.dart';

class UploadFileService {
  void uploadFile() {
    debugPrint('Parent Class : Uploading file...');
  }
}

class UploadVideo extends UploadFileService {
  @override
  void uploadFile() {
    debugPrint('Video child Class : Uploading Video...');
  }
}

class UploadImage extends UploadFileService {
  @override
  void uploadFile() {
    debugPrint('Image child Class : Uploading Image...');
  }
}

void main() {
  final data = ['file.pdf', 'video.mp4', 'image.png'];
  late UploadFileService uploadFile;

  for (final item in data) {
    if (item.endsWith('mp4')) {
      uploadFile = UploadVideo();
    } else if (item.endsWith('png')) {
      uploadFile = UploadImage();
    } else {
      uploadFile = UploadFileService();
    }
    uploadFile.uploadFile();
  }
}
