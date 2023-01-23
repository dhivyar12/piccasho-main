import 'package:firebase/controllers/capture_controller.dart';
import 'package:firebase/controllers/registeredevent_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../reusable.dart';

class Capture extends StatelessWidget {
  Capture({Key? key}) : super(key: key);
  ModController controller = Get.put(ModController());
  SubController controller1 = Get.put(SubController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 31, 30, 30),
            appBar: AppBarcustom(context),
            body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                    child: Column(
                        //  crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      SizedBox(
                        height: 155,
                      ),
                      Column(children: [
                        Image.file(controller1.imagefile!),
                        SizedBox(
                          height: 55,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.orange),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  )),
                              onPressed: () {
                                controller1.takePhoto(ImageSource.camera);
                              },
                              child: Text(
                                "Retake",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            // RaisedButton(
                            //   color: Color(0xffF6791D),
                            //   onPressed: () {
                            //     // controller.RegisteredeventNav();
                            //   },
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(15.0),
                            //   ),
                            //   textColor: Colors.black,
                            //   child: Text(
                            //     "Retake",
                            //     style: TextStyle(
                            //         fontSize: 15, fontWeight: FontWeight.bold),
                            //   ),
                            // ),
                            SizedBox(
                              width: 55,
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.orange),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  )),
                              onPressed: () {
                                controller.Nav6();
                              },
                              child: Text(
                                "Use Photo",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            // RaisedButton(
                            //   color: Color(0xffF6791D),
                            //   onPressed: () {
                            //     controller.Nav6();
                            //   },
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(15.0),
                            //   ),
                            //   textColor: Colors.black,
                            //   child: Text(
                            //     "Use Photo",
                            //     style: TextStyle(
                            //         fontSize: 15, fontWeight: FontWeight.bold),
                            //   ),
                            // ),
                          ],
                        ),
                      ])
                    ])))));
  }
}
