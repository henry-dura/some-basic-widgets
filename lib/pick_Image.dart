import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImage extends StatefulWidget {
  const PickImage({super.key});

  @override
  State<PickImage> createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  Future _pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      // photo = Image.file(File(pickedImage!.path))
      _selectedPhoto = File(pickedImage!.path);
    });
  }

  File? _selectedPhoto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker Widget'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              // width: double.infinity,
              height: 400,
              color: Colors.red,
              // decoration: BoxDecoration(image: DecorationImage( )),
              child: _selectedPhoto != null
                  ? Image.file(_selectedPhoto!)
                  : const Text('CHOOSE PHOTO'),
            ),
            ElevatedButton(
              onPressed: () {
                _pickImage();
              },
              child: const Text('Select Image'),
            )
          ],
        ),
      ),
    );
  }
}
