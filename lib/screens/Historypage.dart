// import 'package:flutter/material.dart';
//
// class HistoryPage extends StatelessWidget {
//   const HistoryPage({super.key});
//
//   final List<Map<String, dynamic>> historyData = const [
//     {
//       'date': 'Jul 11, 2025',
//       'type': 'Farming',
//     },
//     {
//       'date': 'Sept 2, 2025',
//       'type': 'Grocery',
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFFFD166),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFFFD166),
//         elevation: 0,
//         centerTitle: true,
//         title: const Text(
//           'History',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.black87,
//             fontSize: 22,
//           ),
//         ),
//       ),
//       body: Center(
//         child: Container(
//           width: 350,
//           padding: const EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             color: Colors.white.withOpacity(0.9),
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Column(
//             children: [
//               const Icon(Icons.history, size: 32, color: Colors.black54),
//               const SizedBox(height: 10),
//               Row(
//                 children: const [
//                   Expanded(
//                     flex: 2,
//                     child: Text('Date',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 3,
//                     child: Text('Type',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 3,
//                     child: SizedBox(), // Space for action icons header (empty)
//                   ),
//                 ],
//               ),
//               const Divider(height: 20, thickness: 1),
//               Expanded(
//                 child: ListView.separated(
//                   itemCount: historyData.length,
//                   separatorBuilder: (_, __) => const Divider(),
//                   itemBuilder: (context, index) {
//                     final entry = historyData[index];
//                     return Row(
//                       children: [
//                         Expanded(
//                           flex: 2,
//                           child: Text(entry['date']),
//                         ),
//                         Expanded(
//                           flex: 3,
//                           child: Text(entry['type']),
//                         ),
//                         Expanded(
//                           flex: 3,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               IconButton(
//                                 icon: const Icon(Icons.remove_red_eye),
//                                 onPressed: () {
//                                   // View action
//                                 },
//                               ),
//                               IconButton(
//                                 icon: const Icon(Icons.edit),
//                                 onPressed: () {
//                                   // Edit action
//                                 },
//                               ),
//                               IconButton(
//                                 icon: const Icon(Icons.delete),
//                                 onPressed: () {
//                                   // Delete action
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//               ),
//               const SizedBox(height: 10),
//               OutlinedButton(
//                 style: OutlinedButton.styleFrom(
//                   foregroundColor: Colors.black,
//                   side: const BorderSide(color: Colors.black),
//                   minimumSize: const Size(double.infinity, 40),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Text('Back to Home'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final List<Map<String, dynamic>> historyData = const [
    {'date': 'Jul 11, 2025', 'type': 'Farming'},
    {'date': 'Sept 2, 2025', 'type': 'Grocery'},
  ];

  int _selectedIndex = 3; // History tab index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // You can perform navigation logic here if using routing or nav controllers
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFD166),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFD166),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'History',
          style:
          TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 22),
        ),
      ),
      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              const Icon(Icons.history, size: 32, color: Colors.black54),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Date',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Type',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: SizedBox(),
                  ),
                ],
              ),
              const Divider(height: 20, thickness: 1),
              Expanded(
                child: ListView.separated(
                  itemCount: historyData.length,
                  separatorBuilder: (_, __) => const Divider(),
                  itemBuilder: (context, index) {
                    final entry = historyData[index];
                    return Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(entry['date']),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(entry['type']),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 30,
                                child: IconButton(
                                  icon: const Icon(Icons.remove_red_eye),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(
                                width: 30,
                                child: IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(
                                width: 30,
                                child: IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
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
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
