import 'package:flutter/material.dart';

import 'layout/stack.dart';
import 'layout/container.dart';
import 'layout/basiclist.dart';
import 'layout/listarray.dart';
import 'layout/rowcolumn.dart';
import 'layout/grid.dart';

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
        title: Text('Aplikasi Layout'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyContainer())),
                child: Text('Container'),
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyRowColumn())),
                child: Text('Row & Column'),
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyBasicList())),
                child: Text('Basic List'),
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyListArray())),
                child: Text('List Array'),
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyStack())),
                child: Text('Stack'),
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyGrid())),
                child: Text('Grid'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
