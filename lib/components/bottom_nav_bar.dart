import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: GNav(
            tabActiveBorder: Border.all(color: Colors.grey.shade200),
            tabBackgroundColor: Colors.grey.shade200,
            color: Colors.grey[400],
            activeColor: Colors.grey.shade700,
            mainAxisAlignment: MainAxisAlignment.center,
            tabBorderRadius: 25,
            onTabChange: (value) => onTabChange!(value),
            tabs: [
              GButton(icon: Icons.home, text: 'Shop'),
              GButton(icon: Icons.shopping_bag_rounded, text: 'Cart'),
            ]),
      ),
    );
  }
}
