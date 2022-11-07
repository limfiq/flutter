import 'package:flutter/material.dart';

class MyListArray extends StatefulWidget {
  const MyListArray({super.key});

  @override
  State<MyListArray> createState() => _MyListArrayState();
}

class _MyListArrayState extends State<MyListArray> {
  List<int> items = [];

  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      items.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Array'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('item no : $index'),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}
