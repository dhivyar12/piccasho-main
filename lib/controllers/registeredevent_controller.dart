import 'dart:io';
// import 'dart:js';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/views/capture.dart';
import 'package:firebase/views/event.dart';
import 'package:firebase/views/eventgoingon.dart';
import 'package:firebase/views/registeredevent.dart';
import 'package:firebase/views/result.dart';
import 'package:firebase/views/submitphoto.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../main.dart';

class SubController extends GetxController {
  GlobalKey<FormState> key = GlobalKey();
  CollectionReference _reference =
      FirebaseFirestore.instance.collection('personal_details');
  CollectionReference postreference =
      FirebaseFirestore.instance.collection("posts");
  String imageUrl = '';
  // String? postId;
  // late PickedFile imageFile;
  // String? downloadURL;
  ImagePicker picker = ImagePicker();

  // SubController({Key? key, this.postId}) : super();
  void Nav3() {
    Get.to(() => Capture());
  }

  void Nav4() {
    Get.to(() => Result());
  }

  void Nav5() {
    Get.to(() => Eventgoingon());
  }

  void Nav6() {
    Get.to(() => Registeredevent());
  }

  File? imagefile;
  ImagePicker imagepicker = ImagePicker();

  void takePhoto(ImageSource source) async {
    final XFile? file = await imagepicker.pickImage(source: ImageSource.camera);
    imagefile = File(file!.path);
    Get.off((Submitphoto()));
    print(imagefile!.path);
    update();

    if (imagefile == null) return;

    String uniqueFileName = DateTime.now().millisecondsSinceEpoch.toString();
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('PICCASHO');
    Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);

    try {
      await referenceImageToUpload.putFile(File(imagefile!.path));
      imageUrl = await referenceImageToUpload.getDownloadURL();
      print(imageUrl);
      await postreference.add({
        "url": imageUrl,
        "isliked": false,
        "totallikes": 0,
      });
    } catch (error) {}
  }

  storedata(context) {
    if (imageUrl.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Please upload an image')));
      return;
    }
  }
  // imagefile = File(photo!.path);
  // box.put('prof', imagefile);
}


  // Future uploadFile(
  //     {required userId, required userName, required firstName}) async {
  //   // final path = 'PROJECT/${imageFile}';
  //   // final file = File(imageFile.path);
  //   final postID = DateTime.now().millisecondsSinceEpoch.toString();

  //   var widget;
  //   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  //   final ref = FirebaseStorage.instance
  //       .ref()
  //       .child("${widget}/PICCASHO")
  //       .child("post_$postID");
  //   await ref.putFile(imagefile!);
  //   downloadURL = await ref.getDownloadURL();
  //   // print(downloadURL);

  //   await firebaseFirestore
  //       .collection("personal_details")
  //       .doc(widget.firstname)
  //       .collection("PICCASHO")
  //       .add({'downloadURL': downloadURL});
  // }
