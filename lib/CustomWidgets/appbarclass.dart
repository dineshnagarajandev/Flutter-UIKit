import 'package:flutter/material.dart';

class AppBarClass extends StatefulWidget {
  _AppBarClass createState() => _AppBarClass();
}

class _AppBarClass extends State<AppBarClass> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, fontSize: 30);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Alarm',
      style: optionStyle,
    ),
    Text(
      'Setting',
      style: optionStyle,
    )
  ];
  // var List<Widget> _rightBarButton = <Widget>[_homeRightNavBar(), _alarmRightNavBar()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _rightNavBar(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        {
          // home
          return <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Search icon tapped');
              },
            )
          ];
        }
        break;
      case 1:
        {
          // Alarm
          return <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                print('Alarm add icon pressed');
              },
            )
          ];
        }
        break;
      case 2:
        {
          // Settings
          return <Widget>[];
        }
        break;
      default:
        break;
    }
  }

  _setAppBarHeader(int index) {
    switch (index) {
      case 0:
        {
          // Home
          return Text('Home');
        }
        break;
      case 1:
        {
          // Alarm
          return Text('Alarm');
        }
        break;
      case 2:
        {
          // Setting
          return Text('Setting');
        }
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _setAppBarHeader(_selectedIndex),
        actions: _rightNavBar(_selectedIndex),
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms), label: 'Alarm'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'About')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
