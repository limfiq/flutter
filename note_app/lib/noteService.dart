import 'package:flutter/material.dart';
import 'package:note_app/note.dart';
import 'package:http/http.dart' as http;

class NoteService {
  static final String _baseUrlList = 'https://midugrogol.sch.id/api/list.php';
  static final String _baseUrlCreate = 'https://midugrogol.sch.id/api/list.php';

  Future getNote() async {
    Uri uriApiList = Uri.parse(_baseUrlList);
    final response = await http.get(uriApiList);

    if (response.statusCode == 200) {
      return NoteFromJson(response.body.toString());
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future saveNote(String id, String title, String content, String date) async {
    Uri uriApiCreate = Uri.parse(_baseUrlCreate);
    final response = await http.post(uriApiCreate,
        body: ({"id": id, "title": title, "content": content, "date": date}));

    if (response.statusCode == 200) {
      print("Data Tersimpan");
      return true;
    } else {
      return false;
    }
  }
}
