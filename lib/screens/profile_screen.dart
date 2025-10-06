import 'package:flutter/material.dart';
// import your screen widgets here
// import 'profile_screen.dart';

class MainNavigation extends StatefulWidget {
  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 4; // Default to User tab

  // Represent your pages/screens as widgets
  final List<Widget> _pages = [
    Center(child: Text('Farmer Screen')),
    Center(child: Text('Grocery Screen')),
    Center(child: Text('Home Screen')),
    Center(child: Text('History Screen')),
    ProfileScreen(),   // Your actual profile screen widget
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icon/farmer.png', height: 28),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icon/grocery.png', height: 28),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 28),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history, size: 28),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icon/user.png', height: 28),
            label: '',
          ),
        ],
      ),
    );
  }
}

// Example profile screen placeholder
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Screen Content Here'));
  }
}


