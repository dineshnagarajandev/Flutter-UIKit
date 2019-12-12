// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

import 'CustomWidgets/textcomponent.dart';
import 'CustomWidgets/rowcomponent.dart';
import 'CustomWidgets/coloumcomponent.dart';
import 'CustomWidgets/stackcomponent.dart';
import 'CustomWidgets/containercomponent.dart';
import 'CustomWidgets/horizontal_listview_components.dart';
import 'CustomWidgets/formcomponent.dart';
import 'CustomWidgets/ListViewWithAPI.dart';
import 'CustomWidgets/alignclass.dart';
import 'CustomWidgets/scafordcomponent.dart';
import 'CustomWidgets/appbarclass.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> widgetNameArray = <String>[
    'Text',
    'Row',
    'Coloumn',
    'Stack',
    'Container',
    'Horizontal ListView',
    'Form',
    'List With API Data',
    'iOS AlertDialog',
    'Material AlertDialog',
    'Align Widget',
    'AppBar',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Flutter Basic',
          ),
        ),
        body: ListView.separated(
          physics: new AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(0),
          itemCount: widgetNameArray.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Container(
                height: 50,
                color: Colors.green,
                child: Center(
                  child: Text(
                    '${widgetNameArray[index]}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              onTap: () => flutterBasicListViewTapped(
                  '${widgetNameArray[index]}', context, index),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
            height: 5,
          ),
        ),
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed: () => {}),
      ),
      routes: {
        "/TextComponent": (context) => TextComponent(),
        "/RowComponent": (context) => RowComponent(),
        "/ColoumComponent": (context) => ColoumComponent(),
        "/StackComponent": (context) => StackComponent(),
        "/ContainerComponent": (context) => ContainerComponent(),
        "/FormComponent": (context) => FormComponent(),
        "/ScafordComponents": (context) => ScafordComponent(),
        "/HorizontalListViewComponents": (context) =>
            HorizontalListViewComponent(),
        "/ListViewWithAPI": (context) => ListViewWithAPI(),
        "/AlignClass": (context) => AlignClass(),
        "/AppBarClass": (context) => AppBarClass()
      },
    );
  }
}

void flutterBasicListViewTapped(
    String selectedWidget, BuildContext context, int index) {
  switch (index) {
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
      // Horizontal List View
      Navigator.pushNamed(context, '/HorizontalListViewComponents');
      break;
    case 6:
      // Form component
      Navigator.pushNamed(context, '/FormComponent');
      break;
    case 7:
      // API component
      Navigator.pushNamed(context, '/ListViewWithAPI');
      break;
    case 8:
      _iOSAlertInit(context);
      break;
    case 9:
      _materialAlertInit(context);
      break;
    case 10:
      Navigator.pushNamed(context, '/AlignClass');
      break;
    case 11:
      Navigator.pushNamed(context, '/AppBarClass');
      break;
    case 12:
      break;
    default:
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text("Default case")));
      break;
  }
}

Future<void> _iOSAlertInit(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return _iosAlert(context);
    },
  );
}

Future<void> _materialAlertInit(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return _materialAlert(context);
    },
  );
}

_materialAlert(BuildContext context) {
  return AlertDialog(
    title: Text('Material Alert'),
    content: Text('Android material designa alert'),
    actions: <Widget>[
      FlatButton(
        child: Text('Yes'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      FlatButton(
        child: Text('No'),
        onPressed: () {
          Navigator.pop(context);
        },
      )
    ],
    elevation: 24.0,
    backgroundColor: Colors.white,
  );
}

_iosAlert(BuildContext context) {
  return CupertinoAlertDialog(
    title: Text('Alert'),
    content: Text("Are you sure about this alert?"),
    actions: <Widget>[
      CupertinoDialogAction(
        child: Text("No"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      CupertinoDialogAction(
        child: Text("Yes"),
        onPressed: () {
          Navigator.pop(context);
        },
      )
    ],
  );
}
