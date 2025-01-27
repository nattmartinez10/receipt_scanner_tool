import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gallery_picker/gallery_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Receipt Scanner",
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            List<MediaFile>? media = await GalleryPicker.pickMedia(
                context: context, singleMedia: true);
          },
          child: const Icon(
            Icons.add,
          )),
    );
  }
}
