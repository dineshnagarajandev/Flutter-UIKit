import 'package:flutter/material.dart';
import 'package:my_app/WhatsApp/CallInfo.dart';
import 'package:my_app/WhatsApp/chatConversation.dart';

whatsAppListContainer(BuildContext context) {
  return Scaffold(
    body: ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(2),
          child: GestureDetector(
            child: Container(
              padding: EdgeInsets.all(4),
              color: Colors.white,
              height: 100,
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.lightBlueAccent,
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'User Name',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Recent message Recent message Recent message',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  )),
                  Text(
                    '07:10 AM',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            onTap: () {
              print('object $index');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatConversation()));
            },
          ),
        );
      },
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.message),
      backgroundColor: Colors.green,
      onPressed: () {},
    ),
  );
}

whatsAppStatuContainer() {
  return Scaffold(
    body: Text('Status'),
    floatingActionButton: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.create),
          backgroundColor: Colors.grey,
          onPressed: () {},
        ),
        Divider(
          color: Colors.white,
        ),
        FloatingActionButton(
          child: Icon(Icons.camera_alt),
          backgroundColor: Colors.green,
          onPressed: () {},
        ),
      ],
    ),
  );
}

whatsAppCallsContainer(BuildContext context) {
  return Scaffold(
    body: GestureDetector(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(2),
            child: Container(
              height: 80,
              color: Colors.white,
              child: Row(children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      NetworkImage('https://via.placeholder.com/150'),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'User name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          'Call time',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  color: Colors.green,
                  icon: Icon(Icons.call),
                  onPressed: () {},
                ),
              ]),
            ),
          );
        },
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CallInfo()));
      },
    ),
    floatingActionButton: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.add_call),
          backgroundColor: Colors.green,
          onPressed: () {},
        )
      ],
    ),
  );
}
