import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Iconcontent extends StatelessWidget {
  Iconcontent({@required this.type, @required this.face});
  final String type;
  final String face;
  @override
  Widget build(BuildContext context) {
    return Row(
      //: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Image(
            //   alignment: AlignmentGeometry(1, 1),
            image: AssetImage(face),
            height: 45,
            width: 45,
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
        Text(
          type,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
