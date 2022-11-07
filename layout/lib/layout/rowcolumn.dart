import 'package:flutter/material.dart';

class MyRowColumn extends StatelessWidget {
  const MyRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row & Column'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.blueAccent,
            height: 50,
            width: 100,
          ),
          Container(
            color: Colors.red,
            height: 50,
            width: 100,
          ),
          Container(
            color: Colors.green,
            height: 50,
            width: 100,
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blueAccent,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.red,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.green,
                height: 50,
                width: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
