import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profil.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //bottom nav option
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      "Index : 0 Home",
      style: optionStyle,
    ),
    Text(
      "Index : 1 Product",
      style: optionStyle,
    ),
    Text(
      "Index : 2 Shop",
      style: optionStyle,
    ),
    Text(
      "Index : 3 Profil",
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),

      //menu sebelah kiri
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
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.production_quantity_limits_sharp),
            label: "Product",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_sharp),
            label: "Shop",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil",
            backgroundColor: Colors.yellow,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
