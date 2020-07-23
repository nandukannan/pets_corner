import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'Iconcontent.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          child: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10),
            child: FlatButton(
              //  color: Colors.blue,
              child: Text(
                "DOGS",
                style: TextStyle(
                  fontFamily: 'PlayfairDisplay',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  letterSpacing: 2.0,
                  height: 15,
                ),
              ),
            ),
            alignment: Alignment.topLeft,
          ),
//          Divider(
//            color: Colors.red,
//            height: 10,
//            thickness: 25,
//          )
        ],
      ))
    ]);
  }
}
