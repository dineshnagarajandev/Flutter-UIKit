import 'package:flutter/material.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key key}) : super(key: key);

  @override
  _ContactInfoState createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Contact Info"),
        ),
        body: SingleChildScrollView(
            controller: _scrollController,
            child: Column(children: [
              Container(
                height: 320,
                decoration: BoxDecoration(color: Colors.yellow),
                child: Center(
                  child: Text("User Image"),
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Row(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 8), child: Text("Name")),
                ]),
              )
            ])));
  }
}
