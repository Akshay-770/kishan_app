import 'package:flutter/material.dart';
import 'FarmerBook.dart';  // Update path if needed
import 'GroceryBook.dart'; // Import your GroceryBook page

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<home_screen> {
  int _selectedIndex = 2; // Default Home tab

  final List<Widget> _pages = [
    Center(child: Text('Farmer Page')),
    Center(child: Text('Grocery Page')),
    Center(child: Text('History Page')),
    Center(child: Text('User Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget homeContent = SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFD166), // Yellowish
              Color(0xFFF5DEB3), // Beige
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/growth.png",
              height: 120,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 40),
            const Text(
              "Calculate and track farming\nor grocery business expenses\nand profit/loss",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.brown,
                fontFamily: 'Serif',
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FarmerBook()),
                );
              },
              icon: const Icon(Icons.agriculture, color: Colors.black),
              label: const Text(
                'Farmer Book',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFA500),
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GroceryBook()),
                );
              },
              icon: const Icon(Icons.shopping_cart, color: Colors.orange),
              label: const Text(
                'Grocery Book',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.orange,
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Color(0xFFFFA500), width: 2),
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    var actualPages = [..._pages];
    actualPages.insert(2, homeContent);

    return Scaffold(
      body: actualPages[_selectedIndex],
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
