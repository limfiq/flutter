import 'package:flutter/material.dart';

class MyGrid extends StatefulWidget {
  const MyGrid({super.key});

  @override
  State<MyGrid> createState() => _MyGridState();
}

class _MyGridState extends State<MyGrid> {
  List<int> items = [];
  @override
  void initState() {
    for (int i = 0; i < 18; i++) {
      items.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview Layout'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: items.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.red,
            child: Padding(
              padding: EdgeInsets.all(50),
            ),
          );
        },
      ),
    );
  }
}
