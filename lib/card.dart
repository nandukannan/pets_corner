import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  Reusable({this.cardChild, this.onPress});
  // final Color colour;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 75,
            width: 125,
            child: cardChild,
            margin: EdgeInsets.only(left: 20.0, top: 10),
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow,
              //color: colour,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ],
      ),
    );
  }
}
