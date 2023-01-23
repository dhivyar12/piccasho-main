import 'package:firebase/views/capture.dart';
import 'package:firebase/views/registeredevent.dart';

import 'package:firebase/views/result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/register.dart';

class AddController extends GetxController {
  void Nav1() {
    Get.to(() => Register());
  }

  void Nav2() {
    Get.to(() => Result());
  }

  void Nav3() {
    Get.to(() => Registeredevent());
  }
}
