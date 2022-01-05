import 'package:flutter/material.dart';
import 'package:my_app/WhatsApp/contactinfo.dart';

class CallInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.green,
          title: Align(
            child: Text('Call info'),
            alignment: Alignment.centerLeft,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {
                print('Message in call info');
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print('More in call info');
              },
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          print('Call');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContactInfo()));
                        },
                        child: Container(
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://via.placeholder.com/150'),
                                radius: 30,
                              ),
                              // Expanded(
                              // child:
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('User Name'),
                                    Text(
                                      'Hey there! I am using WhatsApp',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.call),
                        color: Colors.green,
                        onPressed: () {
                          print('Call icon tapped');
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.videocam),
                        color: Colors.green,
                        onPressed: () {
                          print('Video icon tapped');
                        },
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: EdgeInsets.all(8),
                            height: 60,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 60,
                                  height: 60,
                                  child: Center(
                                      child: Icon(
                                    Icons.call_made,
                                    color: Colors.green,
                                  )),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text('Outgoing'),
                                        Text(
                                          '12:00 AM',
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  'Unavailable',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
