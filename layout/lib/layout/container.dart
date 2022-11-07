import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container layout'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Text('Ini Container Layout'),
            height: 200,
            width: 100,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.pink[400],
            ),
            transform: Matrix4.rotationZ(0.5),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text('Ini Container Layout'),
            height: 200,
            width: 100,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue[400],
            ),
            transform: Matrix4.rotationZ(0.5),
          ),
        ],
      ),
    );
  }
}
