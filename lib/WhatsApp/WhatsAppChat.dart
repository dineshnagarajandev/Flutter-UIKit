import 'package:flutter/material.dart';
import 'package:my_app/WhatsApp/chatConversation.dart';
import 'package:my_app/WhatsApp/createnewchat.dart';

class WhatsAppChat extends StatefulWidget {
  const WhatsAppChat({Key key}) : super(key: key);

  @override
  _WhatsAppChatState createState() => _WhatsAppChatState();
}

class _WhatsAppChatState extends State<WhatsAppChat> {
  @override
  Widget build(BuildContext context) {
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChatConversation()));
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreateNewChat()));
        },
      ),
    );
  }
}
