import 'package:flutter/material.dart';
import 'package:sneakerapp/components/bottom_nav_bar.dart';
import 'package:sneakerapp/pages/cart_page.dart';
import 'package:sneakerapp/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //selected_index to control the bottom nav bar
  int _selectedIndex = 0;

  //this method below will update the selectedIndex when the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to navigate between/display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),

    //cart page
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  //logo
                  DrawerHeader(
                      padding: EdgeInsets.all(50),
                      child: Image.asset(
                        'lib/images/nikewhitelogo.png',
                      )),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Divider(
                      color: Colors.grey[800],
                      thickness: 2,
                    ),
                  ),

                  //Other Pages
                  //Home-Page ListTile
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(Icons.home, color: Colors.white),
                      title: Text(
                        'Home',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),

                  //About-Page ListTile
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(Icons.info, color: Colors.white),
                      title: Text(
                        'About',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),

              //Logout-Page ListTile
              Padding(
                padding: const EdgeInsets.only(bottom: 25, left: 25.0),
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.white),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              )
            ]),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
