import 'package:firebase/views/event.dart';
import 'package:firebase/views/eventgoingon.dart';
import 'package:firebase/views/registeredevent.dart';
import 'package:firebase/views/resultboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MulController extends GetxController {
  void Nav6() {
    Get.to(() => Eventgoingon());
  }

  void Nav7() {
    Get.to(() => Registeredevent());
  }

  void Nav8() {
    Get.to(() => Resultboard());
  }
}
