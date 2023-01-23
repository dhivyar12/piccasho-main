import 'dart:async';
import 'package:firebase/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:firebase/views/second_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  SecondScreenController controller = Get.put(SecondScreenController());
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  initScreen(BuildContext context) {
    controller.SecondScreenNav();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 300.0,
        title: Container(
          alignment: Alignment.center,
          child: SvgPicture.asset(
            'assets/Frame.svg',
            // fit: BoxFit.fill,
            height: 250,
            width: 300,
          ),
        ),
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 247, 185, 15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(200),
                bottomRight: Radius.circular(200))),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: SizedBox(),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Container(
            // child: SvgPicture.asset("assets/Frame.svg"),
            //height: 200,
            //width: 200,
            //),
            // Padding(padding: EdgeInsets.all(0.0)),
            Text(
              "PIC CASH O",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        ),
      ),
    );
  }
}
