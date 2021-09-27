import 'package:flutter/material.dart';
import 'package:flutter_instagram/screens/account.dart';
import 'package:flutter_instagram/screens/home.dart';
import 'package:flutter_instagram/screens/reels.dart';
import 'package:flutter_instagram/screens/search.dart';
import 'package:flutter_instagram/screens/shop.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];

  void _navigateBottomNavBar(int screenIndex) {
    setState(() {
      _selectedIndex = screenIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _children[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
    );
  }
}
