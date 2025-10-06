// import 'package:flutter/material.dart';
//
// class UserPage extends StatefulWidget {
//   const UserPage({super.key});
//
//   @override
//   State<UserPage> createState() => _UserPageState();
// }
//
// class _UserPageState extends State<UserPage> {
//   String userEmail = "user1234@gmail.com";
//   String selectedType = "Grocery";
//   final List<String> types = ["Grocery", "Farming"];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFFFD166),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFFFD166),
//         elevation: 0,
//         centerTitle: true,
//         title: Image.asset(
//           "assets/icon/farmer.png",
//           height: 36,
//         ),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             const SizedBox(height: 20),
//             CircleAvatar(
//               radius: 55,
//               backgroundColor: Colors.grey.shade300,
//               child: const Icon(Icons.person, size: 80, color: Colors.grey),
//             ),
//             const SizedBox(height: 18),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text(
//                   "User",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 24,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(width: 8),
//                 Icon(Icons.edit, color: Colors.grey.shade700, size: 20),
//               ],
//             ),
//             const SizedBox(height: 6),
//             Text(
//               userEmail,
//               style: const TextStyle(
//                 fontSize: 16,
//                 color: Colors.black54,
//               ),
//             ),
//             const SizedBox(height: 25),
//             Divider(thickness: 1, color: Colors.black38),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
//               child: Row(
//                 children: [
//                   const Text("Type  :", style: TextStyle(fontSize: 16)),
//                   const SizedBox(width: 12),
//                   DropdownButton<String>(
//                     value: selectedType,
//                     items: types
//                         .map((t) => DropdownMenuItem(
//                       value: t,
//                       child: Text(t, style: const TextStyle(fontSize: 16)),
//                     ))
//                         .toList(),
//                     onChanged: (val) {
//                       setState(() {
//                         selectedType = val!;
//                       });
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             Divider(thickness: 1, color: Colors.black38),
//             const SizedBox(height: 25),
//             GestureDetector(
//               onTap: () {
//                 // Implement your logout logic here
//               },
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text(
//                     "Logout ",
//                     style: TextStyle(
//                       color: Colors.red,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 22,
//                     ),
//                   ),
//                   Icon(Icons.logout, color: Colors.red, size: 24),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: 4,
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Colors.grey,
//         onTap: (index) {
//           // Switch tabs in parent MainScreen if needed
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Image.asset('assets/icon/farmer.png', height: 28),
//             label: 'Farmer',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset('assets/icon/grocery.png', height: 28),
//             label: 'Grocery',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset('assets/icon/home.png', height: 28),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset('assets/icon/clock.png', height: 28),
//             label: 'History',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset('assets/icon/user.png', height: 28),
//             label: 'User',
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  String userEmail = "user1234@gmail.com";
  String selectedType = "Grocery";
  final List<String> types = ["Grocery", "Farming"];

  // Function to show logout confirmation dialog
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        title: const Text("Logout"),
        content: const Text("Are you sure you want to Sign Out..?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text("Cancle", style: TextStyle(fontWeight: FontWeight.w500)),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop(); // Close dialog
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const LogoutPage()),
              );
            },
            child: const Text("Sign Out", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFD166),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFD166),
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          "assets/icon/farmer.png",
          height: 36,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 55,
              backgroundColor: Colors.grey.shade300,
              child: const Icon(Icons.person, size: 80, color: Colors.grey),
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "User",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 8),
                Icon(Icons.edit, color: Colors.grey.shade700, size: 20),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              userEmail,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 25),
            Divider(thickness: 1, color: Colors.black38),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
              child: Row(
                children: [
                  const Text("Type  :", style: TextStyle(fontSize: 16)),
                  const SizedBox(width: 12),
                  DropdownButton<String>(
                    value: selectedType,
                    items: types
                        .map((t) => DropdownMenuItem(
                      value: t,
                      child: Text(t, style: const TextStyle(fontSize: 16)),
                    ))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        selectedType = val!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Divider(thickness: 1, color: Colors.black38),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: () => _showLogoutDialog(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Logout ",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Icon(Icons.logout, color: Colors.red, size: 24),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 4,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          // Switch tabs in parent MainScreen if needed
        },
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
      ),
    );
  }
}

// Placeholder Logout page to navigate to on sign out
class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Show confirmation snackbar on load
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("You are successfully logged out.")),
      );
    });

    return Scaffold(
      backgroundColor: const Color(0xFFFFD166),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.logout, size: 54, color: Colors.orange),
            SizedBox(height: 20),
            Text(
              "Logged out",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              "You are successfully logged out.",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
