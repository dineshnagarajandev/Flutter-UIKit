import 'package:flutter/material.dart';
import 'package:my_app/WhatsApp/CallInfo.dart';

class WhatsAppCall extends StatefulWidget {
  const WhatsAppCall({Key key}) : super(key: key);

  @override
  _WhatsAppCallState createState() => _WhatsAppCallState();
}

class _WhatsAppCallState extends State<WhatsAppCall> {
  @override
  Widget build(BuildContext context) {
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
}
