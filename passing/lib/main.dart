import 'package:flutter/material.dart';
import 'page_passing_value.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //menghilangkan banner debug pojok kanan atas
      debugShowCheckedModeBanner: false,

      //menentukan warna tema aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      //memanggil pagepassingvalue untuk ditampilkan di home
      home: PagePassingValue(),
    );
  }
}
