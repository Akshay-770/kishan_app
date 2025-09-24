import 'package:flutter/material.dart';
import 'profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    Center(child: Text('Farmer', style: TextStyle(fontSize: 24))),
    Center(child: Text('Grocery', style: TextStyle(fontSize: 24))),
    Center(child: Text('Home' , style: TextStyle(fontSize: 24))),
    Center(child: Text('History' , style: TextStyle(fontSize: 24))),
    Center(child: Text('User', style: TextStyle(fontSize: 24))),

    ProfileScreen(),  // Use ProfileScreen widget here
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
        title: const Text('Kisan Grocery Plus'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icon/farmer.png', height: 28),
            label: 'Farmer',
          ),
           BottomNavigationBarItem(
            icon: Image.asset('assets/icon/grocery.png', height: 28),
            label: 'Grocery',
          ),
           BottomNavigationBarItem(
            icon: Image.asset('assets/icon/home.png', height: 28),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icon/clock.png', height: 28),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icon/user.png', height: 28),
            label: 'User',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

