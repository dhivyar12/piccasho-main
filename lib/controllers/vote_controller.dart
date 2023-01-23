import 'package:firebase/views/like.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VoteController extends GetxController {
  int indexes = 0;

  indexchange(i) {
    indexes = i;
    print(indexes);
    update();
  }

  // void LikeNav() {
  //   Get.to(() => Like());
  // }
}
