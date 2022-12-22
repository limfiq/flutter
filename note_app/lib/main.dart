import 'package:flutter/material.dart';
import 'package:note_app/noteService.dart';

import 'package:note_app/note.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future data;
  List<Note> data2 = [];

  @override
  void initState() {
    data = NoteService().getNote();
    data.then((value) {
      setState(() {
        data2 = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            ".: Note App :.",
            style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Roboto"),
          ),
        ),
        body: data2.length == 0
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              )
            : ListView.builder(
                itemCount: data2.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data2[index].title),
                  );
                }));
  }
}
