import 'package:firebase/views/event.dart';
import 'package:firebase/views/like.dart';
import 'package:firebase/views/profile.dart';
import 'package:firebase/controllers/vote_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/registeredevent_controller.dart';
import '../reusable.dart';
import 'package:flutter/src/widgets/preferred_size.dart';

class VotePage extends StatelessWidget {
  VoteController controller = Get.put(VoteController());
  SubController controller1 = Get.put(SubController());
  VotePage({Key? key}) : super(key: key);
  final pages = [Vote(), Event()];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VoteController>(builder: (controller) {
      return Center(
        child: SizedBox(
          child: pages[controller.indexes],
          // child: Text("data"),
        ),
      );
    });
  }
}

class Vote extends StatelessWidget {
  VoteController controller = Get.put(VoteController());
  Vote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VoteController>(builder: (controller) {
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
                    padding: const EdgeInsets.all(20.0),
                    child: getListView(),
                  )
                ],
              ),
            ),
            bottomNavigationBar: bottomnavbar(),
            //  bottomNavigationBar: BottomNav(context),
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
    });
  }
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
                      Get.to(() => Like());
                    },
                    child: Text(
                      "Vote Pics",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ])));
      });
  return listView;
}
