import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assets App'),
      ),
      body: Column(
        children:[ 
          CircleAvatar(
            child: Image.asset('assets/image/pita.png'),
          ),
          CircleAvatar(
            child: Image.network('https://en.wikipedia.org/wiki/User_%28computing%29#/media/File:User_icon_2.svg'),
          )
        ],
      ),
    );
  }
}
