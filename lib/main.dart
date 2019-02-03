import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "exploring UI Widget",
    home: Scaffold(
      appBar: AppBar(title: Text('long list'),),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint('clicked'),
        child: Icon(Icons.add),
        tooltip: 'Add more item to the list!',
        ),
      ),
    ),
  );
}

// Widget getListView() {
//   var listView = ListView(
//     children: <Widget>[

//       ListTile(
//         leading: Icon(Icons.landscape),
//         title: Text('Landscape'),
//         subtitle: Text('Beautiful View!'),
//         trailing: Icon(Icons.wb_sunny),
//       ),
//       ListTile(
//         leading: Icon(Icons.laptop),
//         title: Text('Linux Os'),
//         onTap: () => debugPrint('laptop Tapped!'),
//       ),
//     ],
//   );

//   return listView;
// }

List<String> getListElements() {

  var items = List<String>.generate(1000, (counter) => "item $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElements();
  
  var listViews = ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(listItems[index]),
        leading: Icon(Icons.ac_unit),
        onTap: () {
          showSnackBar(context,listItems[index]);
        },
      );
    }
  );

  return listViews;
}

void showSnackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text('You have tapped on $item'),
    action: SnackBarAction(
      label: 'undo',
      onPressed: () => debugPrint('undo deleted item'),
    ),
  );

  Scaffold.of(context).showSnackBar(snackBar);
}