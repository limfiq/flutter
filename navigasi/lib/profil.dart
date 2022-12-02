import 'package:flutter/material.dart';
import 'home.dart';

class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              child: const UserAccountsDrawerHeader(
                currentAccountPicture: ClipOval(
                  child: Image(
                    image: AssetImage("images/user.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                accountName: Text(
                  "Ufiq",
                  style: TextStyle(fontSize: 20),
                ),
                accountEmail: Text("mtaufiq39@gmail.com"),
              ),
            ),
            //menu
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => ProfilPage(),
                  ),
                );
              },
              leading: Icon(Icons.person),
              title: Text("profil"),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          height: 80,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Home',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
