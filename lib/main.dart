import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stateful App Example',
      home: FavoriteCity(),
    )
  );
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {

  String nameCity = '';

  @override
  Widget build(BuildContext context) {

    debugPrint("Favorite City Widget Is Created! ");

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful App Example'),
      ),
      body: Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            TextField(        
              onSubmitted: (String userInput) {
                setState(() {
                  debugPrint("Set state is called, this tell the framework ro redraw the favcity widget");
                  nameCity = userInput;
                });                
              },
            ),
            Padding (
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Your best city is $nameCity',
                style: TextStyle(fontSize: 20.0),
              )
            )
          ],
        ),
      ),
    );
  }
}