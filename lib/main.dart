import 'package:flutter/material.dart';
import 'CustomWidgets/scafordcomponent.dart';

import 'CustomWidgets/textcomponent.dart';
import 'CustomWidgets/rowcomponent.dart';
import 'CustomWidgets/coloumcomponent.dart';
import 'CustomWidgets/stackcomponent.dart';
import 'CustomWidgets/containercomponent.dart';
import 'CustomWidgets/expandedcomponent.dart';
import 'CustomWidgets/listviewcomponents.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

final List<String> widgetNameArray = <String>['Text', 'Row', 'Coloumn', 'Stack', 'Container', 'Expanded', 'Scaffold', 'ListView'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Flutter Basic',
          ),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(0),
          itemCount: widgetNameArray.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Container(
              height: 50,
              color: Colors.green,
              child: Center(
                child: Text('${widgetNameArray[index]}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                  ),
                ),
              ),
            ),
            onTap: () => flutterBasicListViewTapped('${widgetNameArray[index]}', context, index),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
            height: 5,
          ),
        )
      ) ,
      routes: {
        "/TextComponent": (context) => TextComponent(),
        "/RowComponent": (context) => RowComponent(),
        "/ColoumComponent": (context) => ColoumComponent(),
        "/StackComponent": (context) => StackComponent(),
        "/ContainerComponent": (context) => ContainerComponent(),
        "/ExpandedComponent": (context) => ExpandedComponent(),
        "/ScafordComponents": (context) => ScafordComponent(),
        "/ListViewComponents": (context) => ListViewComponent()
      },
    );
  }
}

void flutterBasicListViewTapped(String selectedWidget, BuildContext context, int index) {
  switch(index) {
    case 0: 
    // Text component
    Navigator.pushNamed(context, '/TextComponent');
    break;
    case 1: 
    // Row component
    Navigator.pushNamed(context, '/RowComponent');
    break;
    case 2: 
    // Column component
    Navigator.pushNamed(context, '/ColoumComponent');
    break;
    case 3: 
    // Stack component
    Navigator.pushNamed(context, '/StackComponent');
    break;
    case 4: 
    // Container component
    Navigator.pushNamed(context, '/ContainerComponent');
    break;
    case 5: 
    // Expanded component
    Navigator.pushNamed(context, '/ExpandedComponent');
    break;
    case 6: 
    // Scaffold component
    Navigator.pushNamed(context, '/ScafordComponents');
    break;
    case 7: 
    // ListView component
    Navigator.pushNamed(context, '/ListViewComponents');
    break;
    default:
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Default case")));
    break;
  }
}