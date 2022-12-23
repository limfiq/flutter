import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:note_app/search.dart';
import 'package:note_app/noteService.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  bool isCari = false;
  TextEditingController cariText = TextEditingController();
  TextEditingController titleText = TextEditingController();
  TextEditingController contentText = TextEditingController();
  TextEditingController dateText = TextEditingController();

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: titleText,
              decoration: InputDecoration(
                hintText: "Masukkan Judul",
                label: Text("Judul Catatan"),
                icon: Icon(Icons.book),
              ),
            ),
            TextField(
              controller: contentText,
              decoration: InputDecoration(
                hintText: "Masukkan Isi Catatan",
                label: Text("isi Catatan"),
                icon: Icon(Icons.edit),
              ),
            ),
            TextField(
              controller: dateText,
              decoration: InputDecoration(
                hintText: "Masukkan Tanggal",
                label: Text("Tanggal Catatan"),
                icon: Icon(Icons.calendar_view_day),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Tambah Data",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
