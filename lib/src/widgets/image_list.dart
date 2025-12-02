import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<imageModel> images;
  const ImageList({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(imageModel image) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Image.network(image.url),
          ),

          Text(image.title),
        ],
      ),
    );
  }
}
