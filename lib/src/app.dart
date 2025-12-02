import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:photodisplay/src/widgets/image_list.dart';
import './models/image_model.dart';
import 'dart:convert';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  List<imageModel> images = [];

  void fetchImage() async {
    counter++;
    final response = await get(
      Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'),
    );
    var image = imageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images: images),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
