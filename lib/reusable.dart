import 'package:firebase/views/event.dart';
import 'package:firebase/controllers/profile_controller.dart';
import 'package:firebase/views/profile.dart';
import 'package:firebase/controllers/vote_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'main.dart';
import 'views/vote.dart';
import 'views/event.dart';
import 'package:get/get.dart';

ProfileController controller = Get.put(ProfileController());
AppBarcustom(context) {
  return AppBar(
    title: const Text(
      "PIC CASH O",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      IconButton(
          icon: SvgPicture.asset('assets/notification.svg'),
          tooltip: 'Closes application',
          onPressed: () {}),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                icon: Image.network(
                  "${box.get('profile')}",
                ),
                tooltip: 'Closes application',
                onPressed: () {
                  controller.ProfileNav();
                }),
          ),
        ),
      ),
    ],
    backgroundColor: Color.fromARGB(255, 31, 30, 30),
    bottom: PreferredSize(
        child: Container(
          color: Color(0xff797979),
          height: 1.0,
        ),
        preferredSize: Size.fromHeight(4.0)),
  );
}

VoteController controller1 = Get.put(VoteController());
bottomnavbar() {
  return GetBuilder<VoteController>(builder: (controller1) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey,
      selectedItemColor: Colors.orange,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      currentIndex: controller1.indexes,
      items: const [
        BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              size: 35,
            ),
            icon: Icon(
              Icons.home_outlined,
              size: 35,
            ),
            label: 'FEED'),
        BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.camera_alt,
              size: 35,
            ),
            icon: Icon(
              Icons.camera_alt_outlined,
              size: 35,
            ),
            label: 'EVENT'),
      ],
      onTap: controller1.indexchange,
      selectedIconTheme: IconThemeData(
        color: Colors.orange,
        size: 28,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 22,
      ),
    );
  });
}
