import 'package:firebase/views/payment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../controllers/pay_controller.dart';
import '../main.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  PayController controller = Get.put(PayController());

  TextEditingController userName =
      TextEditingController(text: box.get('firstname'));
  late Razorpay razorpay;

  @override
  void initState() {
    super.initState();
    razorpay = new Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    razorpay.clear();
  }

  void openCheckout() {
    var options = {
      "key": "rzp_test_HwytDppbEXbkO1",
      "amount": num.parse(controller.paymentController.text) * 100,
      "name": userName.text,
      "prefill": {
        "contact": "6382771549",
        "email": "dhivyap.19msc@kongu.edu",
      },
      "external": {
        "wallets": ["paytm"]
      }
    };
    try {
      razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  handlerPaymentSuccess(PaymentSuccessResponse response) async {
    print("Payment Success");
    controller.paymentID = response.paymentId;
    controller.Create();
    Get.offAll(Payment());
    print(response.paymentId);
  }

  handlerErrorFailure() {
    print("Payment Error");
    // Toast.show("Payment Error");
  }

  handlerExternalWallet() {
    print("External Wallet");
    // Toast.show("External Wallet");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text('Payment')),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller.paymentController,
              decoration: InputDecoration(hintText: "Enter amount to pay"),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            ElevatedButton(
                onPressed: () {
                  openCheckout();
                },
                child: Text('Pay Now'))
          ],
        ),
      ),
    ));
  }
}
