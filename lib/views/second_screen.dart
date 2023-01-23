import 'package:firebase/controllers/second_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'form_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({Key? key}) : super(key: key);

  FormPageController controller = Get.put(FormPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: SvgPicture.asset("assets/Group 1.svg"),
              ),
              SizedBox(
                width: 250,
                child: TextButton(
                  onPressed: () async {
                    await controller.signInWithGoogle();
                    controller.UserDet();
                    Get.to(() => FormPage());
                    // setState(() {});
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => FormPage()),
                    // );
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0),
                              side: const BorderSide(color: Colors.black)))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/google.svg',
                        height: 40.0,
                        width: 37.0,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Sign in with Google",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
