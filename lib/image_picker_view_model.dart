import 'package:image_picker/image_picker.dart';

class ImagePickViewModel {
  Future<String?> onUserPickImageGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    return image?.path;
  }

  Future<String?> onUserPickImageCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    return image?.path;
  }
}
