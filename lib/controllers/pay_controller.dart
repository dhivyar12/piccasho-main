import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../main.dart';

class PayController extends GetxController {
  TextEditingController paymentController = TextEditingController();

  TextEditingController userName =
      TextEditingController(text: box.get('firstname'));

  String? paymentID;

  void onInit() {
    super.onInit();
  }

  Create() {
    firebase.collection("payment").doc(userName.text).set({
      "userName": userName.text,
      "payedAmount": paymentController.text,
      "paymentID": paymentID,
    });
  }
}
