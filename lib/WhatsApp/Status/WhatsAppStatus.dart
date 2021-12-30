import 'package:flutter/material.dart';
import 'package:my_app/WhatsApp/Status/WhatsAppStatusCreate.dart';

class WhatsAppStatus extends StatefulWidget {
  const WhatsAppStatus({Key key}) : super(key: key);

  @override
  _WhatsAppStatusState createState() => _WhatsAppStatusState();
}

class _WhatsAppStatusState extends State<WhatsAppStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          separatorBuilder: (context, index) => Divider(),
          itemBuilder: (context, index) {
            return (index == 0)
                ? Container(
                    color: Colors.grey[100],
                    height: 80,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage(
                                    'https://via.placeholder.com/150'),
                                backgroundColor: Colors.lightBlueAccent,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: Colors.white, width: 1)),
                                  child: Icon(Icons.add, color: Colors.white)),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "My status",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Tap to add status update",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ))
                : Container();
          },
          itemCount: 1),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.create, color: Colors.grey[800]),
            backgroundColor: Colors.grey[300],
            onPressed: () {
              print("Create status tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WhatsAppStatusCreate()));
            },
          ),
          Divider(
            color: Colors.white,
          ),
          FloatingActionButton(
            child: Icon(Icons.camera_alt),
            backgroundColor: Colors.green,
            onPressed: () {
              print("Camera tapped");
            },
          ),
        ],
      ),
    );
  }
}
