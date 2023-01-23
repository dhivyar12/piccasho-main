import 'package:firebase/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../reusable.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  PaymentController controller = Get.put(PaymentController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 31, 30, 30),
        appBar: AppBarcustom(context),
        body: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Center(
            child: Container(
              height: 550.0,
              width: 500.0,
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
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "\t\t\t\t\tThis event is to discover the unknown talented photographers.",
                      style: TextStyle(
                          fontSize: 20,
                          //  fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Rules",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "\t\t\t\t\tMust upload only the photos captured by your own.",
                    style: TextStyle(
                        fontSize: 20,
                        //  fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Category",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Night life",
                    style: TextStyle(
                        fontSize: 20,
                        //  fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Last Day For Submission",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "13/12/2022",
                    style: TextStyle(
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        )),
                    onPressed: () {
                      controller.PaymentNav();
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  // RaisedButton(
                  //   color: Color(0xffF6791D),
                  //   onPressed: () {
                  //     controller.PaymentNav();
                  //     //  Login();
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
                  //     "Register",
                  //     style:
                  //         TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                  // TextButton(
                  //   child: Text("Register ",
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
                ],
              ),
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
            ),
          ),
        ),
      ),
    );
  }
}
