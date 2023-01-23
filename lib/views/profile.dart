import 'package:firebase/controllers/form_page_controller.dart';
import 'package:firebase/controllers/profile_controller.dart';
import 'package:firebase/views/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import '../main.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  FormController controller = Get.put(FormController());
  ProfileController controller1 = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      appBar: AppBar(
        title: const Text(
          "PIC CASH O",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              icon: new SvgPicture.asset('assets/notification.svg'),
              tooltip: 'Closes application',
              onPressed: () {}),
        ],
        backgroundColor: Color.fromARGB(255, 31, 30, 30),
        bottom: PreferredSize(
            child: Container(
              color: Color(0xff797979),
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                SizedBox(height: 20.0),
                Column(children: [
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // CircleAvatar(
                  //     radius: 100.0,
                  //     backgroundImage: AssetImage('assets/person.jpg')
                  //     // backgroundColor: Colors.greenAccent[400],
                  //     ),
                  GetBuilder<ProfileController>(builder: (controller) {
                    return imageDetails(context);
                  }),
                  // Positioned(
                  //     bottom: 0,
                  //     right: 0,
                  //     child: Container(
                  //       height: 40,
                  //       width: 40,
                  //       decoration: BoxDecoration(
                  //           shape: BoxShape.circle,
                  //           border: Border.all(width: 4),
                  //           color: Colors.blue),
                  //     )
                  //     ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(150, 10, 65, 10),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${box.get('firstname')}",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "${box.get('lastname')}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _buildPopupDialog(context),
                        );
                      },
                      child:
                          Text('Edit Profile', style: TextStyle(fontSize: 17))),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut();
                        await GoogleSignIn().signOut();
                        // box.clear();
                        Get.offAll(() => SplashScreen());
                      },
                      child: Text('Signout', style: TextStyle(fontSize: 17))),
                  SizedBox(
                    height: 25,
                  ),
                  //     Container(
                  //       decoration: BoxDecoration(
                  //           color: Color.fromARGB(255, 115, 114, 114),
                  //           borderRadius: BorderRadius.circular(20.0)),
                  //       padding: EdgeInsets.all(3),
                  //       width: 370.0,
                  //       height: 98.0,
                  //       child: Row(
                  //         children: [
                  //           Padding(
                  //             padding: const EdgeInsets.all(20.0),
                  //             child: Column(
                  //               children: const [
                  //                 Text("6.5k ",
                  //                     textAlign: TextAlign.left,
                  //                     style: TextStyle(
                  //                       fontSize: 25,
                  //                       color: Colors.orange,
                  //                       fontWeight: FontWeight.bold,
                  //                     )),
                  //                 Text("Likes",
                  //                     textAlign: TextAlign.left,
                  //                     style: TextStyle(
                  //                       fontSize: 20,
                  //                       color: Colors.white,
                  //                       fontWeight: FontWeight.bold,
                  //                     )),
                  //               ],
                  //             ),
                  //           ),
                  //           SizedBox(
                  //             //Use of SizedBox
                  //             width: 25,
                  //           ),
                  //           Row(
                  //             children: [
                  //               Padding(
                  //                 padding: const EdgeInsets.all(20.0),
                  //                 child: Column(
                  //                   children: [
                  //                     Text("15 ",
                  //                         textAlign: TextAlign.center,
                  //                         style: TextStyle(
                  //                           fontSize: 25,
                  //                           color: Colors.orange,
                  //                           fontWeight: FontWeight.bold,
                  //                         )),
                  //                     Text("Captures",
                  //                         textAlign: TextAlign.left,
                  //                         style: TextStyle(
                  //                           fontSize: 20,
                  //                           color: Colors.white,
                  //                           fontWeight: FontWeight.bold,
                  //                         )),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             //Use of SizedBox
                  //             width: 30,
                  //           ),
                  //           Row(
                  //             children: [
                  //               Padding(
                  //                 padding: const EdgeInsets.all(20.0),
                  //                 child: Column(
                  //                   children: [
                  //                     Text("6 ",
                  //                         textAlign: TextAlign.right,
                  //                         style: TextStyle(
                  //                           fontSize: 25,
                  //                           color: Colors.orange,
                  //                           fontWeight: FontWeight.bold,
                  //                         )),
                  //                     Text("Top 5",
                  //                         textAlign: TextAlign.left,
                  //                         style: TextStyle(
                  //                           fontSize: 20,
                  //                           color: Colors.white,
                  //                           fontWeight: FontWeight.bold,
                  //                         )),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //     )
                  //   ]),
                  //   SizedBox(
                  //     height: 10,
                  //   ),
                  //   Padding(
                  //     padding: const EdgeInsets.all(30.0),
                  //     child: Text(
                  //       "Captures",
                  //       textAlign: TextAlign.left,
                  //       style: TextStyle(
                  //         fontSize: 25,
                  //         fontWeight: FontWeight.bold,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  //   Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: GridView.count(
                  //       crossAxisCount: 3,
                  //       crossAxisSpacing: 0.0,
                  //       mainAxisSpacing: 0.0,
                  //       shrinkWrap: true,
                  //       children: List.generate(
                  //         20,
                  //         (index) {
                  //           return Padding(
                  //             padding: const EdgeInsets.all(2.0),
                  //             child: Container(
                  //               decoration: BoxDecoration(
                  //                 image: DecorationImage(
                  //                   image: AssetImage('assets/white.jpg'),
                  //                   fit: BoxFit.cover,
                  //                 ),
                  //                 borderRadius: BorderRadius.all(
                  //                   Radius.circular(0.0),
                  //                 ),
                  //               ),
                  //             ),
                  //           );
                  //         },
                  //       ),
                  //  ),
                ]),
              ])),
        ),
      ),
      //  bottomNavigationBar: BottomNav(context),
    );

    //AppBar
  }

  Widget imageDetails(context) {
    var imageFile;
    return Stack(
      children: [
        controller1.imagefile == null
            ? ClipOval(
                child: Image.network(
                  "${box.get('profile')}",
                ),
              )
            : ClipOval(
                child: SizedBox(
                    height: 120,
                    width: 120,
                    child: Image.file(controller1.imagefile!))),
        Positioned(
            bottom: 2,
            right: 2,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: ((builder) => bottomSheet(context)));
              },
              child: Icon(
                Icons.camera_alt,
                color: Colors.blue,
              ),
            ))
      ],
    );
  }

  Widget bottomSheet(context) {
    final ImagePicker _picker = ImagePicker();
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(children: [
        Text(
          'Choose Profile Photo',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton.icon(
            onPressed: () async {
              controller1.takePhoto(ImageSource.camera);
            },
            icon: Icon(Icons.camera),
            label: Text('Camera'),
            style: ElevatedButton.styleFrom(
                // backgroundColor:
                ),
          ),
          ElevatedButton.icon(
            onPressed: () async {
              controller1.choosePhoto(ImageSource.gallery);
            },
            icon: Icon(Icons.image),
            label: Text('Gallery'),
            style: ElevatedButton.styleFrom(
                // backgroundColor:
                ),
          ),
        ])
      ]),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      title: Center(child: const Text('Edit Profile')),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  "${box.get('profile')}",
                ),
              ),
            ),
            TextFormField(
              controller: controller.firstname,
              decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Firstname',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  hintText: '@name',
                  hintStyle: TextStyle(height: 2.5)),
            ),
            TextFormField(
              controller: controller.lastname,
              decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Lastname',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  hintText: '@name',
                  hintStyle: TextStyle(height: 2.5)),
            ),
            TextFormField(
              controller: controller.usernumber,
              decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'usernumber',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  hintText: '@number',
                  hintStyle: TextStyle(height: 2.5)),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            controller.Update();
            // Navigator.of(context).pop();
          },
          child: const Text('Update'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}
