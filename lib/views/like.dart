import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/main.dart';
import 'package:firebase/reusable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Like extends StatelessWidget {
  Like({Key? key}) : super(key: key);
  CollectionReference postreference =
      FirebaseFirestore.instance.collection("posts");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      appBar: AppBarcustom(context),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection("posts").snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: ((context, index) {
                      QueryDocumentSnapshot x = snapshot.data!.docs[index];
                      print(x.id);

                      return Column(
                        children: [
                          CachedNetworkImage(
                            key: UniqueKey(),
                            imageUrl: x['url'],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () async {
                              var liked = x["isliked"] == true ? false : true;
                              var totallikes = liked == true
                                  ? x["totallikes"] + 1
                                  : x["totallikes"] - 1;
                              await postreference.doc(x.id).update(
                                  {"isliked": liked, "totallikes": totallikes});
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: x["isliked"] == true
                                      ? Colors.pink
                                      : Colors.grey,
                                ),
                                Text(
                                  x["totallikes"].toString(),
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      );
                    }));
              }

              return Center(
                  child: CircularProgressIndicator(
                color: Color.fromARGB(255, 89, 243, 33),
              ));
            }),
      ),
      // bottomNavigationBar: BottomNav(context),
    );
  }
}
