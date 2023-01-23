import 'dart:io';
import 'package:firebase/views/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../main.dart';

class ProfileController extends GetxController {
  late PickedFile imageFile;
  ImagePicker picker = ImagePicker();
  // void onInit() {
  //   super.onInit();
  // }

  void ProfileNav() {
    Get.to(() => Profile());
  }

  File? imagefile;
  ImagePicker _picker = ImagePicker();

  void takePhoto(ImageSource source) async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    imagefile = File(photo!.path);
    // box.put('prof', imagefile);
    update();
  }

  void choosePhoto(ImageSource source) async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    imagefile = File(image!.path);
    // box.put('prof', imagefile);
    update();
  }
}
