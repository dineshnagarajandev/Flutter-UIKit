import 'package:flutter/material.dart';
import 'package:my_app/ServiceManager/servicemanager.dart';
import 'package:my_app/models/user.dart';
import 'dart:convert';

class ListViewWithAPI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewWithAPI'),
      ),
      body: _MyListWithAPIBodyWidget(),
    );
  }
}

class _MyListWithAPIBodyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyListState();
  }
}

class _MyListState extends State {
  var user = List<User>();

  @override
  void initState() {
    super.initState();
    _getUser();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  build(context) {
    return ListView.builder(
      itemCount: user.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(user[index].name),);
      },
      
    );
  }

  _getUser() {
    API.getUser().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        user = list.map((model) => User.fromJson(model)).toList();
      });
    });
  }
}
