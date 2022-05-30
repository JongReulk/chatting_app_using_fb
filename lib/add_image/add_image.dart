import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AddImage extends StatefulWidget {
  const AddImage(this.addImageFunc, {Key? key}) : super(key: key);

  final Function(File pickedImage) addImageFunc;

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  File? pickedImage;

  // image_picker를 사용하여 갤러리의 사진 불러오기
  void _pickImage() async {
    final imagePicker = ImagePicker();
    final pickedImageFile = await imagePicker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
      maxHeight: 150,
    );
    setState(() {
      if (pickedImageFile != null) {
        pickedImage = File(pickedImageFile.path);
      }
    });
    widget.addImageFunc(pickedImage!);
  }

  @override
  Widget build(BuildContext context) {
    // 이미지 등록 dialog 관련
    return Container(
      padding: EdgeInsets.only(top: 20),
      width: 150,
      height: 300,
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.blue,
            backgroundImage:
                pickedImage != null ? FileImage(pickedImage!) : null,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'SELECT PROFILE',
            style: GoogleFonts.patrickHandSc(
                fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: () {
              _pickImage();
            },
            icon: Icon(Icons.image),
            label: Text('Add icon' , style: GoogleFonts.patrickHandSc(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
          ),
          SizedBox(
            height: 5,
          ),
          OutlinedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
            label: Text(
              'Close',
              style: GoogleFonts.patrickHandSc(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
          ),
        ],
      ),
    );
  }
}
