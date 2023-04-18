import 'package:flutter/material.dart';
import 'package:image_picker_2/image_picker_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const ImagePick(), //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
