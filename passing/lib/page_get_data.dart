//import package dan model
import 'package:flutter/material.dart';
import 'model_user.dart';

class PageGetData extends StatefulWidget {
  //variavel
  final UserModel value;

  //key
  PageGetData({
    required Key? key,
    required this.value,
  }) : super(key: key);

  @override
  _PageGetDataState createState() => _PageGetDataState();
}

class _PageGetDataState extends State<PageGetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ambil Data'),
        backgroundColor: Colors.blue,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              Padding(
                child: new Text(
                  'Data Terambil',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 20.0),
              ),
              /*
              * menampilkan data yang diinputkan pada halaman pagepassingvalue
              * ditampilkan dengan memanggil widget.value. ....
               */
              Padding(
                child: new Text(
                  'username: ' + widget.value.username,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.all(10.0),
              ),
              Padding(
                child: new Text(
                  'email: ' + widget.value.email,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.all(10.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
