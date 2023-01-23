import 'package:flutter/material.dart';
import '../reusable.dart';

class Resultboard extends StatelessWidget {
  Resultboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 31, 30, 30),
            appBar: AppBarcustom(context),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          Text(
                            "Leaderboard",
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Artist Of The Future",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.orange,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          CircleAvatar(
                              radius: 70.0,
                              backgroundImage: AssetImage('assets/person.jpg')
                              // backgroundColor: Colors.greenAccent[400],
                              ),
                          SizedBox(
                            height: 15,
                          ),
                          Column(
                            children: [
                              Text(
                                "Arun A",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "\t\t\t\t\t2.6K",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.thumb_up_sharp,
                                    size: 17, color: Colors.red),
                                onPressed: () {
                                  // Interactivity or events codes here
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                  radius: 70.0,
                                  backgroundImage:
                                      AssetImage('assets/person.jpg')
                                  // backgroundColor: Colors.greenAccent[400],
                                  ),
                              SizedBox(
                                width: 55,
                              ),
                              CircleAvatar(
                                  radius: 70.0,
                                  backgroundImage:
                                      AssetImage('assets/person.jpg')
                                  // backgroundColor: Colors.greenAccent[400],
                                  ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                                height: 75,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Pranav S",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "\t\t\t\t\t2.2K",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.red,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.thumb_up_sharp,
                                            size: 17, color: Colors.red),
                                        onPressed: () {
                                          // Interactivity or events codes here
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 100,
                                height: 105,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Krishna M",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "\t\t\t\t\t2.1K",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.red,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.thumb_up_sharp,
                                            size: 17, color: Colors.red),
                                        onPressed: () {
                                          // Interactivity or events codes here
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 60.0,
                            width: 400.0,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(
                                color: Colors.black,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 240,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Your Rank",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "2.6K",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.red,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(Icons.thumb_up_sharp,
                                      size: 17, color: Colors.red),
                                  onPressed: () {
                                    // Interactivity or events codes here
                                  },
                                ),
                                Text(
                                  "8",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 55,
                                    child: CircleAvatar(
                                        radius: 35.0,
                                        backgroundImage:
                                            AssetImage('assets/person.jpg')
                                        // backgroundColor: Colors.greenAccent[400],
                                        ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Darshan T",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 95,
                                  ),
                                  Text(
                                    "2.6K",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.red,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.thumb_up_sharp,
                                        size: 17, color: Colors.red),
                                    onPressed: () {
                                      // Interactivity or events codes here
                                    },
                                  ),
                                  Text(
                                    "4",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 55,
                                    child: CircleAvatar(
                                        radius: 35.0,
                                        backgroundImage:
                                            AssetImage('assets/person.jpg')
                                        // backgroundColor: Colors.greenAccent[400],
                                        ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Darshan T",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 95,
                                  ),
                                  Text(
                                    "2.6K",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.red,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.thumb_up_sharp,
                                        size: 17, color: Colors.red),
                                    onPressed: () {
                                      // Interactivity or events codes here
                                    },
                                  ),
                                  Text(
                                    "4",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 55,
                                    child: CircleAvatar(
                                        radius: 35.0,
                                        backgroundImage:
                                            AssetImage('assets/person.jpg')
                                        // backgroundColor: Colors.greenAccent[400],
                                        ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Darshan T",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 95,
                                  ),
                                  Text(
                                    "2.6K",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.red,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.thumb_up_sharp,
                                        size: 17, color: Colors.red),
                                    onPressed: () {
                                      // Interactivity or events codes here
                                    },
                                  ),
                                  Text(
                                    "4",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 55,
                                    child: CircleAvatar(
                                        radius: 35.0,
                                        backgroundImage:
                                            AssetImage('assets/person.jpg')
                                        // backgroundColor: Colors.greenAccent[400],
                                        ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Darshan T",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 95,
                                  ),
                                  Text(
                                    "2.6K",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.red,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.thumb_up_sharp,
                                        size: 17, color: Colors.red),
                                    onPressed: () {
                                      // Interactivity or events codes here
                                    },
                                  ),
                                  Text(
                                    "4",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 55,
                                    child: CircleAvatar(
                                        radius: 35.0,
                                        backgroundImage:
                                            AssetImage('assets/person.jpg')
                                        // backgroundColor: Colors.greenAccent[400],
                                        ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Darshan T",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 95,
                                  ),
                                  Text(
                                    "2.6K",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.red,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.thumb_up_sharp,
                                        size: 17, color: Colors.red),
                                    onPressed: () {
                                      // Interactivity or events codes here
                                    },
                                  ),
                                  Text(
                                    "4",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 55,
                                    child: CircleAvatar(
                                        radius: 35.0,
                                        backgroundImage:
                                            AssetImage('assets/person.jpg')
                                        // backgroundColor: Colors.greenAccent[400],
                                        ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Darshan T",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 95,
                                  ),
                                  Text(
                                    "2.6K",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.red,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.thumb_up_sharp,
                                        size: 17, color: Colors.red),
                                    onPressed: () {
                                      // Interactivity or events codes here
                                    },
                                  ),
                                  Text(
                                    "4",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
