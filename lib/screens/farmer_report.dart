import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(farmer_report());
}

class farmer_report extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmer Report',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: FarmerReportPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FarmerReportPage extends StatelessWidget {
  final List<Map<String, dynamic>> expenses = [
    {"title": "Seeds", "amount": 8000},
    {"title": "Fertilizer", "amount": 3000},
    {"title": "Labour", "amount": 11000},
    {"title": "Machineries Charge", "amount": 22000},
    {"title": "Others", "amount": 3670},
  ];

  final int profit = 50870;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFD580), // Light orange background
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Farmer Report",
          style: GoogleFonts.poppins(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 80), // Bottom padding for nav bar
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Expense",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text("Amount",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                  const Divider(),
                  ...expenses.map((e) => Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(e['title'], style: GoogleFonts.poppins(fontSize: 15)),
                          Text("₹${e['amount']}",
                              style: GoogleFonts.poppins(fontSize: 15)),
                        ],
                      ),
                      const Divider(),
                    ],
                  )),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Profit/',
                          style: GoogleFonts.poppins(
                              color: Colors.green, fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: 'Loss',
                              style: GoogleFonts.poppins(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "₹$profit P",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(Icons.pie_chart_outline,
                              size: 22, color: Colors.black54),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 18),
              ),
              child: Text("Save",
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.white)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFFFA500), // Orange color
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.agriculture), label: "Farmer"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Grocery"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
        ],
      ),
    );
  }
}
