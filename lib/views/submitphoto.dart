import 'package:firebase/controllers/registeredevent_controller.dart';
import 'package:firebase/controllers/submitphoto_controller.dart';
import 'package:firebase/views/event.dart';
import 'package:firebase/views/like.dart';
import 'package:firebase/views/registeredevent.dart';
import 'package:firebase/views/resultboard.dart';
import 'package:firebase/views/vote.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../reusable.dart';

class Submitphoto extends StatelessWidget {
  Submitphoto({Key? key}) : super(key: key);
  LcmController controller = Get.put(LcmController());
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
                        Column(
                          children: [
                            Text("Submit this photo for the event",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Artist Of The Future",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              height: 45,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 85,
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
                                // controller.Nav7();
                                // var loggedInUser;
                                // controller1.(context);

                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      _buildPopupDialog(context),
                                );
                              },
                              child: Text(
                                "yes",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),

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
                                controller1.takePhoto(ImageSource.camera);
                              },
                              child: Text(
                                "No",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            // RaisedButton(
                            //   color: Color(0xffF6791D),
                            //   onPressed: () {
                            //     // controller.Nav6();
                            //   },
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(15.0),
                            //   ),
                            //   textColor: Colors.black,
                            //   child: Text(
                            //     "No",
                            //     style: TextStyle(
                            //         fontSize: 15, fontWeight: FontWeight.bold),
                            //   ),
                            // ),
                          ],
                        ),
                      ])
                    ])))));
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
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}
