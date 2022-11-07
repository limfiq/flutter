import 'package:flutter/material.dart';

class MyBasicList extends StatelessWidget {
  const MyBasicList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic List Layout'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Item 1'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Item 2'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Item 3'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Item 4'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Item 5'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Item 6'),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
