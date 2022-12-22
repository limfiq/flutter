import 'package:flutter/material.dart';
import 'package:note_app/note.dart';
import 'package:http/http.dart' as http;

class NoteService {
  static final String _baseUrl = 'http://10.26.1.67/note/list.php';
  Future getNote() async {
    Uri uriApi = Uri.parse(_baseUrl);
    final response = await http.get(uriApi);

    if (response.statusCode == 200) {
      return NoteFromJson(response.body.toString());
    } else {
      throw Exception('Failed to load data');
    }
  }
}
