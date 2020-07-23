import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:organic/destination.dart';
import 'card.dart';
import 'Iconcontent.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

import 'navigationBar.dart';

class Post {
  final String title;
  final String description;
  Post(this.title, this.description);
}

class Organic extends StatefulWidget {
  @override
  _OrganicState createState() => _OrganicState();
}

class _OrganicState extends State<Organic> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Pet Category',
                        style: TextStyle(
                          fontFamily: 'PlayfairDisplay',
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      //  padding: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                    ),
                    SizedBox(
                      width: 115,
                    ),
                    Container(
                      child: FlatButton(
                        child: Text(
                          'See All',
                          style: TextStyle(
                            //   textBaseline: TextBaseline.alphabetic,
                            fontFamily: 'PlayfairDisplay',
                            fontWeight: FontWeight.normal,
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                        //  padding: EdgeInsets.only(bottom: 18),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
              ),
              Container(
                //flex: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 6,
                      child: Reusable(
                        onPress: () {
                          setState(() {});
                        },
                        cardChild: Iconcontent(
                          face: 'images/dogicon.png',
                          type: "Dogs",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 27,
                    ),
                    Expanded(
                      flex: 6,
                      child: Reusable(
                        onPress: () {
                          setState(() {});
                        },
                        cardChild: Iconcontent(
                          face: 'images/catimage.png',
                          type: "Cats",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 6,
                      child: Reusable(
                        onPress: () {
                          setState(() {});
                        },
                        cardChild: Iconcontent(
                          face: 'images/fish.webp',
                          type: "Fishes",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 27,
                    ),
                    Expanded(
                      flex: 6,
                      child: Reusable(
                        onPress: () {
                          setState(() {});
                        },
                        cardChild: Iconcontent(
                          face: 'images/rabbit.png',
                          type: "rabbits",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 45,
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Featured Pets',
                        style: TextStyle(
                          fontFamily: 'PlayfairDisplay',
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      //  padding: EdgeInsets.all(10),
                      // alignment: Alignment.topLeft,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      child: FlatButton(
                        child: Text(
                          'See All',
                          style: TextStyle(
                            //   textBaseline: TextBaseline.alphabetic,
                            fontFamily: 'PlayfairDisplay',
                            fontWeight: FontWeight.normal,
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                        //  padding: EdgeInsets.only(bottom: 18),
                      ),
                      // alignment: Alignment.topLeft,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
    //   bottomNavigationBar: MybottomNavigationBar(),
  }

// ignore: non_constant_identifier_names
}
