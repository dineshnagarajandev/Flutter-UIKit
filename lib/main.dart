import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/CustomWidgets/buttons.dart';
import 'package:my_app/WhatsApp/CallInfo.dart';

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

import 'WhatsApp/WhatsAppHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  final List<String> widgetNameArray = <String>[
    'Text',
    'Button',
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
    'Whats App'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        "/Buttons": (context) => const Buttons(),
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
        "/AppBarClass": (context) => AppBarClass(),
        "/WhatsAppHome": (context) => WhatsAppHome(),
        "/CallInfo": (context) => CallInfo()
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
      // Buttons
      Navigator.pushNamed(context, '/Buttons');
      break;
    case 2:
      // Row component
      Navigator.pushNamed(context, '/RowComponent');
      break;
    case 3:
      // Column component
      Navigator.pushNamed(context, '/ColoumComponent');
      break;
    case 4:
      // Stack component
      Navigator.pushNamed(context, '/StackComponent');
      break;
    case 5:
      // Container component
      Navigator.pushNamed(context, '/ContainerComponent');
      break;
    case 6:
      // Horizontal List View
      Navigator.pushNamed(context, '/HorizontalListViewComponents');
      break;
    case 7:
      // Form component
      Navigator.pushNamed(context, '/FormComponent');
      break;
    case 8:
      // API component
      Navigator.pushNamed(context, '/ListViewWithAPI');
      break;
    case 9:
      _iOSAlertInit(context);
      break;
    case 10:
      _materialAlertInit(context);
      break;
    case 11:
      Navigator.pushNamed(context, '/AlignClass');
      break;
    case 12:
      Navigator.pushNamed(context, '/AppBarClass');
      break;
    case 13:
      Navigator.pushNamed(context, '/WhatsAppHome');
      break;
    default:
      // Scaffold.of(context)
      // .showSnackBar(SnackBar(content: Text("Default case")));
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
      InkWell(
        child: Text('Yes'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      InkWell(
        child: Text('No'),
        onTap: () {
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
