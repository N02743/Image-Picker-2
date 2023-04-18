import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickViewModel {
  Future onUserPickImageGallery() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image != null) return File(image.path);
    } on PlatformException {
      //print('Failed to pick image: $e');
    }
  }

  Future onUserPickImageCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image != null) return File(image.path);
    } on PlatformException {
      //print('Failed to pick image: $e');
    }
  }
}
