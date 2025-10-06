import 'package:flutter/material.dart';
import 'package:kisan_aa/screens/home_screen.dart';
import 'FarmerBook.dart';
import 'GroceryBook.dart';
import 'Historypage.dart';
import 'screens/home_screen.dart';
import 'screens/FarmerBook.dart';
import 'screens/GroceryBook.dart';
import 'screens/Historypage.dart';
import 'screens/Mainscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 2;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const FarmerBook(),
      const GroceryBook(),
      const home_screen(),
      const HistoryPage(),

    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.agriculture), label: 'Farmer'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Grocery'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
        ],
      ),
    );
  }
}





