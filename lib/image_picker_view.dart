import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker_2/image_picker_view_model.dart';

class ImagePick extends StatefulWidget {
  const ImagePick({Key? key}) : super(key: key);

  @override
  State<ImagePick> createState() => _ImagePickState();
}

class _ImagePickState extends State<ImagePick> {
  File? image;

  final ImagePickViewModel _viewModel = ImagePickViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image Picker"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.cyan),
                  ),
                  icon: const Icon(Icons.photo),
                  label: const Text("Gallery Image",
                      style: TextStyle(
                        // color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  onPressed: () async {
                    final imageTemp = await _viewModel.onUserPickImageGallery();
                    setState(() {
                      image = imageTemp;
                      //print(image);
                    });
                  }),
              ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.lightBlueAccent),
                  ),
                  icon: const Icon(Icons.camera_alt),
                  label: const Text("Camera Image",
                      style: TextStyle(
                        // color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  onPressed: () async {
                    final imageTemp = await _viewModel.onUserPickImageCamera();
                    setState(() {
                      image = imageTemp;
                      //print(image);
                    });
                  }),
              const Divider(
                indent: 50,
                endIndent: 50,
                thickness: 3,
                height: 80,
              ),
              Container(
                constraints: const BoxConstraints(
                    maxHeight: 600,
                    maxWidth:
                        400), // Set max width height for image to prevent overflow
                child: image != null
                    ? Image.file(image!)
                    : const Text("No image selected"),
              ),
            ],
          ),
        ));
  }
}
