import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
        alignment: Alignment.center,
        color: Colors.red,
        // width: 200.0,
        // height: 100.0,
        // margin: EdgeInsets.only(bottom: 15.0, top: 15.0),
        // margin: EdgeInsets.all(15.0),
        child: Text(
          "SUPREME",
          textDirection: TextDirection.ltr,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 75.0,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              color: Colors.white
            ),
          ),
      ),
    );
  }

}