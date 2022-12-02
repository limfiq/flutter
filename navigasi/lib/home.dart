import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigasi/product.dart';
import 'package:navigasi/shop.dart';
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
    HomeData(),
    ProductPage(),
    ShopPage(),
    ProfilPage(),
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
                    image: AssetImage("images/pm.png"),
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

class HomeData extends StatelessWidget {
  const HomeData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const Center(child: Icon(Icons.home, size: 64.0, color: Colors.teal)),
      const Center(
          child: Icon(Icons.notification_add, size: 64.0, color: Colors.cyan)),
      const Center(child: Icon(Icons.chat, size: 64.0, color: Colors.blue)),
    ];
    final _kTabs = <Tab>[
      const Tab(icon: Icon(Icons.home), text: 'Tab1'),
      const Tab(icon: Icon(Icons.notification_add), text: 'Tab2'),
      const Tab(icon: Icon(Icons.chat), text: 'Tab3'),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          // title: const Text('appbar title'),
          backgroundColor: Colors.cyan,
          // If `TabController controller` is not provided, then a
          // DefaultTabController ancestor must be provided instead.
          // Another way is to use a self-defined controller, c.f. "Bottom tab
          // bar" example.
          bottom: TabBar(
            tabs: _kTabs,
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
      ),
    );
  }
}
