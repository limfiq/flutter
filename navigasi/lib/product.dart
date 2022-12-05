import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  static const _kTabPages = <Widget>[
    Center(child: Icon(Icons.home, size: 64.0, color: Colors.teal)),
    Center(
        child: Icon(Icons.production_quantity_limits_sharp,
            size: 64.0, color: Colors.cyan)),
    Center(child: Icon(Icons.shop_sharp, size: 64.0, color: Colors.blue)),
    Center(child: Icon(Icons.people, size: 64.0, color: Colors.blue)),
  ];
  static const _kTabs = <Tab>[
    Tab(icon: Icon(Icons.home), text: 'Home'),
    Tab(icon: Icon(Icons.production_quantity_limits_sharp), text: 'Product'),
    Tab(icon: Icon(Icons.shop_sharp), text: 'Shop'),
    Tab(icon: Icon(Icons.people), text: 'Profil'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _kTabPages.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: _kTabPages,
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: _kTabs,
          controller: _tabController,
        ),
      ),
    );
  }
}
