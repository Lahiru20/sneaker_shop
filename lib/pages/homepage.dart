import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/bottom_nav_bar.dart';
import 'package:sneaker_shop/pages/cart_page.dart';
import 'package:sneaker_shop/pages/shop_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selected_index = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selected_index = index;
    });
  }

  final List<Widget> _Pages = [ShopPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('lib/images/logo.png')),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(leading: Icon(Icons.home), title: Text('Home')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(leading: Icon(Icons.info), title: Text('About')),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _Pages[_selected_index],
    );
  }
}
