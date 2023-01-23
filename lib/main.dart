import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/views/form_page.dart';
import 'package:firebase/views/like.dart';
import 'package:firebase/views/profile.dart';
import 'package:firebase/views/second_screen.dart';
import 'package:firebase/views/splash_screen.dart';
import 'package:firebase/views/submitphoto.dart';
import 'package:firebase/views/vote.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase/views/event.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box box;

final firebase = FirebaseFirestore.instance;
final storageRef = FirebaseStorage.instance.ref();
// void main() => runApp(MyApp());
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  await Hive.initFlutter();
  box = await Hive.openBox('testBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondScreen(),
    );
  }
}
