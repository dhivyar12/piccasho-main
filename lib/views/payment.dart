import 'package:firebase/views/InputDeco_designs.dart';
import 'package:firebase/controllers/payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../reusable.dart';

import 'Pay.dart';
import 'registeredevent.dart';

class Payment extends StatelessWidget {
  Payment({Key? key}) : super(key: key);
  PaymentSucessController controller = Get.put(PaymentSucessController());
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  void Login() {
    final isValid = _formkey.currentState!.validate();
    if (!isValid) {
      return;
    }

    controller.PaymentSucessNav();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 31, 30, 30),
            appBar: AppBarcustom(context),
            body: Center(
                child: SingleChildScrollView(
                    child: Form(
              key: _formkey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Builder(builder: (context) {
                      return Row(
                        children: [
                          SizedBox(),
                        ],
                      );
                    }),
                    Padding(
                      padding: const EdgeInsets.all(70.0),
                      child: Center(
                        child: Container(
                          width: 600.0,
                          height: 550.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 115, 114, 114),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 4, 4, 4),
                                blurRadius: 5.0,
                              ),
                              BoxShadow(
                                color: Colors.grey.shade700,
                                blurRadius: 20.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("Artist Of the Future",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "#ATF1896",
                                style: TextStyle(
                                    fontSize: 15,
                                    //  fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                //textAlign: TextAlign.right
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 30, left: 20, right: 20),
                                child: TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.text,
                                  decoration:
                                      buildInputDecorations("First Name"),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please Enter First Name';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 30, left: 20, right: 20),
                                child: TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.text,
                                  decoration:
                                      buildInputDecorations("Last Name"),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please Enter Last Name';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Text(
                                "REGISTRATION FEES 100",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                //textAlign: TextAlign.right
                              ),
                              // TextButton(
                              //   child: Text("Submit ",
                              //       style:
                              //           TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.black,
                              //     backgroundColor: Colors.orange,

                              //     // side: BorderSide(
                              //     //     color: Color.fromARGB(255, 14, 13, 13), width: 1),
                              //     // elevation: 20,
                              //     minimumSize: Size(100, 45),
                              //     // shadowColor: Colors.red,
                              //     shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(10)),
                              //   ),
                              //   onPressed: () {
                              //     //  controller.PaymentNav();
                              //   },
                              // )
                              SizedBox(
                                height: 45,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.orange),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    )),
                                onPressed: () {
                                  //controller.Nav4();
                                  Get.to(() => Pay());
                                },
                                child: Text(
                                  "Pay",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              // RaisedButton(
                              //   color: Color(0xffF6791D),
                              //   onPressed: () {
                              //     // if (_formkey.currentState!.validate()) {
                              //     //   print("successful");

                              //     //   return;
                              //     // } else {
                              //     //   print("UnSuccessfull");
                              //     // }
                              //   },
                              //   shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(10.0),
                              //   ),
                              //   textColor: Color.fromARGB(255, 6, 6, 6),
                              //   child: Text(
                              //     "Pay",
                              //     style: TextStyle(
                              //         fontSize: 20,
                              //         fontWeight: FontWeight.bold),
                              //   ),
                              // ),
                              SizedBox(
                                height: 35,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.orange),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    )),
                                onPressed: () {
                                  //Login();
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        _buildPopupDialog(context),
                                  );
                                },
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              // RaisedButton(
                              //   color: Color(0xffF6791D),
                              //   onPressed: () {
                              //     Login();
                              //     // controller.PaymentSucessNav();
                              //   },
                              //   shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(10.0),
                              //   ),
                              //   textColor: Color.fromARGB(255, 6, 6, 6),
                              //   child: Text(
                              //     "Submit",
                              //     style: TextStyle(
                              //         fontSize: 20,
                              //         fontWeight: FontWeight.bold),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
            )))));
  }

  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      //   title: Center(child: const Text('Edit Profile')),
      content: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 400.0,
            width: 500.0,
            child: Column(
              children: [
                SizedBox(
                  height: 85,
                ),
                Image.asset(
                  'assets/tickk.jpg',
                  fit: BoxFit.fill,
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Published Succcessfully!!",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 115, 114, 114),
                      )),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 4, 4, 4),
                  blurRadius: 5.0,
                ),
                BoxShadow(
                  color: Colors.grey.shade700,
                  blurRadius: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            // Navigator.of(context).pop();
            Get.to(Registeredevent());
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}
