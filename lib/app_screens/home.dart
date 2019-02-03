import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
        padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
        alignment: Alignment.center,
        color: Colors.red,
        // width: 200.0,
        // height: 100.0,
        // margin: EdgeInsets.only(bottom: 15.0, top: 15.0),
        // margin: EdgeInsets.all(15.0),
        child: Column(
            children: <Widget>[
                Text(
                  "WELCOME",
                  textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 50.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: Colors.white
                    ),
                  ),
                  Text(
                  "Eizlan",
                  textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 50.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: Colors.white
                    ),
                  ),
              // Row(
              //   children: <Widget>[
              //     Expanded(child: Text(
              //     "SUPREME",
              //     textDirection: TextDirection.ltr,
              //       style: TextStyle(
              //         decoration: TextDecoration.none,
              //         fontSize: 50.0,
              //         fontFamily: 'Raleway',
              //         fontWeight: FontWeight.w700,
              //         fontStyle: FontStyle.italic,
              //         color: Colors.white
              //       ),
              //     )), 
              //     Expanded(child:Text(
              //     "LEGIT",
              //     textDirection: TextDirection.ltr,
              //       style: TextStyle(
              //         decoration: TextDecoration.none,
              //         fontSize: 50.0,
              //         fontFamily: 'Raleway',
              //         fontWeight: FontWeight.w700,
              //         fontStyle: FontStyle.italic,
              //         color: Colors.white
              //       ),
              //     )),  
              //   ],
              // ),
              UserImageAsset(),
              UserButton()
            ],
        )
        
        // Row(
        //   children: <Widget>[
        //     Text(
        //     "SUPREME",
        //     textDirection: TextDirection.ltr,
        //       style: TextStyle(
        //         decoration: TextDecoration.none,
        //         fontSize: 50.0,
        //         fontFamily: 'Raleway',
        //         fontWeight: FontWeight.w700,
        //         fontStyle: FontStyle.italic,
        //         color: Colors.white
        //       ),
        //     ), 
        //     Expanded(child:Text(
        //     "LEGIT",
        //     textDirection: TextDirection.ltr,
        //       style: TextStyle(
        //         decoration: TextDecoration.none,
        //         fontSize: 50.0,
        //         fontFamily: 'Raleway',
        //         fontWeight: FontWeight.w700,
        //         fontStyle: FontStyle.italic,
        //         color: Colors.white
        //       ),
        //     )),  
        //   ],
        // )                
      ),
    );
  }
}

class UserImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/user.png');
    Image image = Image(image: assetImage, height: 300.0, width: 300.0);

    return Container(
      padding: EdgeInsets.only(top: 30.0),
      child: image,
    );
  }

}

class UserButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      width: 150.0,
      child: RaisedButton(
        child: Text(
            'Press Here',
            style: TextStyle(
              fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
                color: Colors.black
            ),
          ),
        elevation: 6.0,        
        color: Colors.white,
        onPressed: () {
          hello(context);
        },
      ),
    );
  }
}

void hello(BuildContext context) {

  var alertDialog = AlertDialog(
    title: Text('Hello Eizlan!!!'),
    content: Text('welcome to this app'),
  );

  //function return alert dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alertDialog;
    }
  );
}