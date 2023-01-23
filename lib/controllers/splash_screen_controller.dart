import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase/views/second_screen.dart';

class SecondScreenController extends GetxController {
  RxBool splash = true.obs;

  Future SecondScreenNav() async {
    splash.value = true;
    await Future.delayed(Duration(seconds: 2));
    Get.to(() => SecondScreen());
  }
}
