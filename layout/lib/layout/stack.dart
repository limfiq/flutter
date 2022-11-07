import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Layout'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Stack(
        // alignment: Alignment.center,
        children: <Widget>[
          Card(
            color: Colors.green,
            child: Padding(
              padding: EdgeInsets.all(200),
            ),
          ),
          Card(
            color: Colors.yellow,
            child: Padding(
              padding: EdgeInsets.all(100),
            ),
          ),
          Card(
            color: Colors.red,
            child: Padding(
              padding: EdgeInsets.all(50),
            ),
          ),
          Card(
            color: Colors.blue,
            child: Padding(
              padding: EdgeInsets.all(25),
            ),
          ),
        ],
      ),
    );
  }
}
