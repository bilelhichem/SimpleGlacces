import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  String selectedImagePath = '';

//-----------------
  selectImageFromGallery() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }

  gallerySelect(context) async {
    selectedImagePath = await selectImageFromGallery();
    log('Image_Path:-');
    log(selectedImagePath);
    if (selectedImagePath != '') {
      Get.back();
    } else {
      Get.snackbar("Image", "No image selected");
    }
    update();
  }


}