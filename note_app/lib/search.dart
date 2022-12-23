import 'package:flutter/material.dart';

import 'note.dart';
import 'noteService.dart';

class SearchNote extends StatefulWidget {
  late String keyword;
  SearchNote({required this.keyword});

  @override
  State<SearchNote> createState() => _SearchNoteState();
}

class _SearchNoteState extends State<SearchNote> {
  late Future data;
  List<Note> data2 = [];
  bool isCari = false;
  TextEditingController cariText = TextEditingController();
  bool cekData = true;
  @override
  void initState() {
    data = NoteService().getNote();
    data.then((value) {
      setState(() {
        data2 = value;
        data2
            .where((element) =>
                element.title
                    .toLowerCase()
                    .contains(widget.keyword.toLowerCase()) ||
                element.id
                    .toString()
                    .toLowerCase()
                    .contains(widget.keyword.toLowerCase()))
            .toList();
        if (data2.length == 0) {
          cekData = false;
        }
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
            ? cekData
                ? Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  )
                : Center(
                    child: Text(
                      "Maaf !! Tidak ada data yang dicari",
                      style: TextStyle(fontSize: 30),
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
                }));
  }
}
