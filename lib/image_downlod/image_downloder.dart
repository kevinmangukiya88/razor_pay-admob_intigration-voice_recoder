import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageDownloader extends StatelessWidget {
  final url =
      "https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  _save() async {
    var status = await Permission.storage.request();
    if (status.isGranted) {
      var response = await Dio()
          .get(url, options: Options(responseType: ResponseType.bytes));
      final result = await ImageGallerySaver.saveImage(
          Uint8List.fromList(response.data),
          quality: 60,
          name: "hello");
      print(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Download'),
      ),
      body: Column(
        children: [
          Image(
            height: 450,
            width: 500,
            image: NetworkImage(url),
          ),
          FloatingActionButton.extended(
            onPressed: () {
              _save();
            },
            label: Icon(Icons.download_rounded),
          ),
        ],
      ),
    );
  }
}
