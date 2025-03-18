import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../Color/App_Colors.dart';
import '../Font/Fonttext.dart';
import '../Icons/Icons.dart';

class ImagePickerforImage extends StatefulWidget {
  final Function(XFile?) onImagePicked;
  final String labelText;

  const ImagePickerforImage({Key? key, required this.onImagePicked,required this.labelText})
      : super(key: key);

  @override
  State<ImagePickerforImage> createState() => _FrontImagePickerState();
}

class _FrontImagePickerState extends State<ImagePickerforImage> {
  final ImagePicker _picker = ImagePicker();
  XFile? frontImage;

  Future<void> pickImage() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      frontImage = pickedImage;
      widget.onImagePicked(pickedImage);
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: pickImage,
      child: Container(
        height: height * 0.15,
        width: width * 0.31,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: ColorConst.silver),
          borderRadius: BorderRadius.circular(16),
          color: ColorConst.white,
        ),
        child: frontImage != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.file(
                  File(frontImage!.path),
                  fit: BoxFit.cover,
                ),
              )
            : widget.labelText=="" ? Center(
          child:     Opacity(
            opacity: 0.5,
            child: IconConst.camera,
          ),
        ): Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: IconConst.camera,
                  ),
                  SizedBox(height: 8),
                  CustomText(
                    text: widget.labelText,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorConst.black,
                  ),
                ],
              ),
      ),
    );
  }
}
