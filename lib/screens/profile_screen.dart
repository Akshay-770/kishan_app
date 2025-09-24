// import 'package:flutter/material.dart';
//
// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});
//
//   void _onSignOut(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//         title: const Text('Sign Out'),
//         content: const Text('Are you sure you want to sign out?'),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.of(ctx).pop(),
//             child: const Text('Cancel'),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.of(ctx).pop();
//               // Add your sign out logic here like clearing user session, etc
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(content: Text('Signed out successfully')),
//               );
//               // Navigate to login screen or splash screen
//               Navigator.pushReplacementNamed(context, '/login');
//             },
//             child: const Text('Sign Out'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile & Settings'),
//       ),
//       body: ListView(
//         children: [
//           const SizedBox(height: 20),
//           ListTile(
//             leading: const CircleAvatar(
//               radius: 30,
//               backgroundImage: NetworkImage('https://placehold.co/100x100?text=User'),
//             ),
//             title: const Text(
//               'John Doe',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//             ),
//             subtitle: const Text('johndoe@example.com'),
//             trailing: IconButton(
//               icon: const Icon(Icons.edit),
//               onPressed: () {
//                 // Add edit profile logic here
//               },
//             ),
//           ),
//           const Divider(),
//           ListTile(
//             leading: const Icon(Icons.list_alt),
//             title: const Text('My Orders'),
//             trailing: const Icon(Icons.keyboard_arrow_right),
//             onTap: () {
//               // Navigate to orders screen
//               Navigator.pushNamed(context, '/orders');
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.settings),
//             title: const Text('Settings'),
//             trailing: const Icon(Icons.keyboard_arrow_right),
//             onTap: () {
//               // Navigate to settings screen
//               Navigator.pushNamed(context, '/settings');
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.help_outline),
//             title: const Text('Help & Support'),
//             trailing: const Icon(Icons.keyboard_arrow_right),
//             onTap: () {
//               // Navigate to help/support screen
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.logout),
//             title: const Text('Sign Out'),
//             trailing: const Icon(Icons.exit_to_app),
//             onTap: () => _onSignOut(context),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Optional: Add app bar if needed
//       appBar: AppBar(
//         title: const Text('Profile'),
//       ),
//       body: ListView(
//         children: const [
//           ProfilePageType(),
//         ],
//       ),
//     );
//   }
// }

// // Your converted Figma profile UI code
// class ProfilePageType extends StatelessWidget {
//   const ProfilePageType({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           width: 393,
//           height: 852,
//           clipBehavior: Clip.antiAlias,
//           decoration: BoxDecoration(color: const Color(0xFFFFF7A2)),
//           child: Stack(
//             children: [
//               Positioned(
//                 left: 253.01,
//                 top: -305,
//                 child: Container(
//                   transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.70),
//                   width: 898.66,
//                   height: 1098.36,
//                   decoration: ShapeDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment(0.52, 0.26),
//                       end: Alignment(0.63, 0.67),
//                       colors: [const Color(0xFFFECC6D), const Color(0x99E7C9AC)],
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.only(bottomRight: Radius.circular(500)),
//                     ),
//                     shadows: [
//                       BoxShadow(
//                         color: Color(0x3F000000),
//                         blurRadius: 4,
//                         offset: Offset(0, 4),
//                         spreadRadius: 0,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               // Add more Positioned widgets here as in your code
//               //...
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF6C873),
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: Icon(Icons.menu, color: Colors.black),
//         actions: [
//           Icon(Icons.notifications_none, color: Colors.black),
//         ],
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           SizedBox(height: 20),
//           // App logo
//           Image.asset('assets/images/kisan_logo.png', height: 40),
//           SizedBox(height: 20),
//           // User avatar
//           CircleAvatar(
//             radius: 50,
//             backgroundImage: AssetImage('assets/images/user_avatar.png'), // use placeholder
//           ),
//           SizedBox(height: 10),
//           // Username & email
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "User",
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//               ),
//               Icon(Icons.edit, size: 18, color: Colors.grey),
//             ],
//           ),
//           Text(
//             "user1234@gmail.com",
//             style: TextStyle(fontSize: 16, color: Colors.black87),
//           ),
//           SizedBox(height: 20),
//           Divider(thickness: 1.2),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 32.0),
//             child: Row(
//               children: [
//                 Text("Type :", style: TextStyle(fontSize: 16)),
//                 SizedBox(width: 16),
//                 Expanded(
//                   child: DropdownButton<String>(
//                     value: 'Farmer',
//                     items: [
//                       DropdownMenuItem(value: "Farmer", child: Text("Farmer")),
//                       DropdownMenuItem(value: "Grocery", child: Text("Grocery")),
//                     ],
//                     onChanged: (value) {},
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Divider(thickness: 1.2),
//           SizedBox(height: 30),
//           GestureDetector(
//             onTap: () {
//               // Handle logout
//             },
//             child: Text(
//               'Logout ⎋',
//               style: TextStyle(
//                 fontSize: 22,
//                 color: Colors.red,
//                 fontWeight: FontWeight.bold,
//                 decoration: TextDecoration.underline,
//               ),
//             ),
//           ),
//         ],
//       ),
//       // bottomNavigationBar: BottomNavigationBar(
//       //   currentIndex: 4,
//       //   onTap: (index) { /* Handle navigation */ },
//       //   items: [
//       //     BottomNavigationBarItem(
//       //       icon: Image.asset('assets/icons/farmer.png', height: 28),
//       //       label: 'Farmer',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Image.asset('assets/icons/grocery.png', height: 28),
//       //       label: 'Grocery',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.home, size: 28),
//       //       label: 'Home',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.history, size: 28),
//       //       label: 'History',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Image.asset('assets/icons/user.png', height: 28),
//       //       label: 'User',
//       //     ),
//       //   ],
//       // ),
//
//     );
//   }
// }

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


