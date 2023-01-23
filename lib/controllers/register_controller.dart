import 'package:firebase/views/payment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  void PaymentNav() {
    Get.to(() => Payment());
  }
}
