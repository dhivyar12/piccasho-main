import 'package:firebase/views/like.dart';
import 'package:firebase/views/vote.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

class FormController extends GetxController {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController userage = TextEditingController();
  TextEditingController userplace = TextEditingController();
  TextEditingController usernumber = TextEditingController();
  // @override
  // void onInit() {
  //   super.onInit();
  //   // firstname = TextEditingController(text: box.get('firstname'));
  //   // lastname = TextEditingController(text: box.get('lastname'));
  //   // usernumber = TextEditingController(text: box.get('usernumber'));
  // }

  Create() {
    firebase.collection("personal_details").doc(firstname.text).set({
      "firstname": firstname.text,
      "lastname": lastname.text,
      "userage": userage.text,
      "userplace": userplace.text,
      "usernumber": usernumber.text,
    });
  }

  Update() {
    firebase.collection("Personal Details").doc(firstname.text).update({
      "usernumber": usernumber.text,
    });
  }
  // void VoteNav() {
  //   Get.to(() => Vote());
  // }

}
