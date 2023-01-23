import 'package:firebase/controllers/event_controller.dart';
import 'package:firebase/views/registeredevent.dart';
import 'package:firebase/views/result.dart';
import 'package:firebase/controllers/vote_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../reusable.dart';

class Event extends StatelessWidget {
  Event({Key? key}) : super(key: key);
  AddController controller = Get.put(AddController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 31, 30, 30),
          appBar: AppBarcustom(context),
          extendBodyBehindAppBar: false,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Container(
                      width: 400,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 115, 114, 114),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
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
                              // Get.to(() => Registeredevent());
                            },
                            child: Text(
                              "Going On",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          //       RaisedButton(
                          //         color: Color(0xffF6791D),
                          //         onPressed: () {
                          //  //          controller.RegisteredeventNav();
                          //         },s
                          //         shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(15.0),
                          //         ),
                          //         textColor: Colors.white,
                          //         child: Text(
                          //           "Going On",
                          //           style: TextStyle(
                          //               fontSize: 15, fontWeight: FontWeight.bold),
                          //         ),
                          //       ),

                          // TextButton(
                          //   child: Text(
                          //     "Going On",
                          //     style: TextStyle(
                          //         fontSize: 18, fontWeight: FontWeight.bold),
                          //   ),
                          //   style: TextButton.styleFrom(
                          //     primary: Colors.white,
                          //     // backgroundColor: Colors.orange,
                          //     minimumSize: Size(100, 45),
                          //     shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(25)),
                          //   ),
                          //   onPressed: () {},
                          // ),
                          SizedBox(
                            width: 20,
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
                              Get.to(() => Registeredevent());
                            },
                            child: Text(
                              "Registered",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),

                          // SizedBox(
                          //   width: 35,
                          // ),
                          // ElevatedButton(
                          //   style: ButtonStyle(
                          //       backgroundColor:
                          //           MaterialStateProperty.all<Color>(
                          //               Colors.orange),
                          //       shape: MaterialStateProperty.all<
                          //           RoundedRectangleBorder>(
                          //         RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(10.0),
                          //         ),
                          //       )),
                          //   onPressed: () {
                          //     Get.to(() => Result());
                          //   },
                          //   child: Text(
                          //     "Results",
                          //     style: TextStyle(
                          //         fontSize: 15,
                          //         fontWeight: FontWeight.bold,
                          //         color: Colors.black),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: getListView(),
                )
              ],
            ),
          ),
          bottomNavigationBar: bottomnavbar(),
          // bottomNavigationBar: Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(50),
          //       topRight: Radius.circular(50),
          //     ),
          //     color: Colors.white,
          //     // boxShadow: [
          //     //   BoxShadow(
          //     //     color: Colors.grey,
          //     //     blurRadius: 0.0,
          //     //   ),
          //     // ],
          //   ),
          //   height: 70,
          //   child: BottomNavigationBar(
          //     backgroundColor: Color.fromARGB(255, 115, 114, 114),
          //     items: const <BottomNavigationBarItem>[
          //       BottomNavigationBarItem(
          //         icon: Icon(Icons.home),
          //         label: 'Feed',
          //       ),
          //       BottomNavigationBarItem(
          //           icon: Icon(Icons.camera_alt), label: 'Event'),
          //       // BottomNavigationBarItem(
          //       //     icon: Icon(Icons.contact_mail), label: 'Home'),
          //     ],
          //     currentIndex: _selectedIndex,
          //     selectedItemColor: Colors.amber[800],
          //     onTap: _onItemTapped,
          //   ),
        ));
  }

  Widget getListView() {
    var cn = [
      'Event : Night life of the day',
      // 'Event : Pet Lovers',
      // 'Event : Nature',
      // 'Event : Buildings'
    ];
    var nn = [
      '#ATF1896',
      // '#BKH8943',
      //  '#DDF9876',
      //   '#GDH8657'
    ];
    var ts = [
      'Low Light', 'Animals',
      // 'started',
      // 'Not started'
    ];
    // var tn = ['1 | Erode', '2 | Gobi', '3 | Chennai', '4 | Cochin'];
    // var tt = ['Vaccation', 'IV', 'IV', 'Vaccation'];
    // var d = ['2 July', '30 sept', '4 Aug', '22 Oct'];
    // var t = [
    //   '10.25 AM - 12.30 PM',
    //   '01.25 PM - 04.30 PM',
    //   '05.25 PM - 10.30 PM',
    //   '10.25 AM - 12.30 PM'
    // ];
    var listView = ListView.builder(
        shrinkWrap: true,
        itemCount: cn.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 115, 114, 114),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 4, 4, 4),
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                  height: 200,
                  child: Column(children: [
                    Expanded(
                        child: ListTile(
                      title: Text(
                        cn[index],
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 247, 247),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    Expanded(
                        child: ListTile(
                      title: Text(
                        nn[index],
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 252, 252),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    Expanded(
                        child: ListTile(
                      title: Text(
                        ts[index],
                        style: TextStyle(
                          color: Color.fromARGB(255, 244, 241, 241),
                          fontSize: 20,
                        ),
                      ),
                    )),
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
                        controller.Nav1();
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
                    //     controller.Nav1();
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
                    //       style: TextStyle(fontWeight: FontWeight.bold)),
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
                    //     controller.RegisterNav();
                    //   },
                    // )
                  ])));
        });
    return listView;
  }
}
