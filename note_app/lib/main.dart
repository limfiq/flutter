import 'package:flutter/material.dart';
import 'package:note_app/addNote.dart';
import 'package:note_app/noteService.dart';

import 'package:note_app/note.dart';
import 'package:note_app/search.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
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
  bool isCari = false;
  TextEditingController cariText = TextEditingController();

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
          title: !isCari
              ? Text(
                  ".: Note App :.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: "Roboto"),
                )
              : TextField(
                  controller: cariText,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: "Roboto"),
                  decoration: InputDecoration(
                      hintText: "Cari Data",
                      hintStyle: TextStyle(color: Colors.green)),
                  onSubmitted: (value) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            SearchNote(keyword: cariText.text)));
                  },
                ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    this.isCari = !this.isCari;
                  });
                },
                icon: !isCari ? Icon(Icons.search) : Icon(Icons.cancel)),
          ],
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
                  return Card(
                    color: Colors.blueGrey,
                    child: ListTile(
                      title: Text("Tulisan Ke-" + data2[index].id),
                      subtitle: Text(data2[index].title),
                    ),
                  );
                },
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AddNote()));
          },
          tooltip: "Tambah Data",
          child: Icon(Icons.add),
        ));
  }
}
