import 'package:firebase/views/form_page.dart';
import 'package:firebase/views/second_screen.dart';
import 'package:firebase/views/vote.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../main.dart';

class FormPageController extends GetxController {
  // void FormPageNav() {
  //   Get.to(() => FormPage());
  // }
  void onInit() async {
    super.onInit();
    LoginStatus();
    UserDet();
  }

  UserDet() {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final username = user.displayName;
      final profile = user.photoURL;
      // final email = user.email;
      // print(username);
      box.put('username', username);
      box.put('profile', profile);
      // box.put('email', email);
    }
  }

  LoginStatus() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        Get.offAll(() => SecondScreen());
      } else {
        Get.offAll(() => Vote());
      }
    });
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
