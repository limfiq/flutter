import 'package:dataflutter/data.dart';
import 'package:dataflutter/dataservice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DataPage(),
  ));
}

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  late Future tampil;
  List<Data> tampilkan = [];
  @override
  void initState() {
    tampil = DataService().getData();
    tampil.then((value) {
      setState(() {
        tampilkan = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List Data',
          style: TextStyle(color: Colors.black, fontSize: 25.0),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: tampilkan.length == 0
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : ListView.builder(
              itemCount: tampilkan.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tampilkan[index].post_header),
                  subtitle: Text(tampilkan[index].post_body),
                );
              }),
    );
  }
}
