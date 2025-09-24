import 'package:flutter/material.dart';

class FarmerBook extends StatefulWidget {
  const FarmerBook({super.key});

  @override
  State<FarmerBook> createState() => _FarmerBookPageState();
}

class _FarmerBookPageState extends State<FarmerBook> {
  final TextEditingController seedsController = TextEditingController();
  final TextEditingController fertilizerController = TextEditingController();
  final TextEditingController labourController = TextEditingController();
  final TextEditingController machineryController = TextEditingController();
  final TextEditingController othersController = TextEditingController();

  int totalExpense = 0;

  void calculateTotal() {
    setState(() {
      totalExpense = (int.tryParse(seedsController.text) ?? 0) +
          (int.tryParse(fertilizerController.text) ?? 0) +
          (int.tryParse(labourController.text) ?? 0) +
          (int.tryParse(machineryController.text) ?? 0) +
          (int.tryParse(othersController.text) ?? 0);
    });
  }

  @override
  void dispose() {
    seedsController.dispose();
    fertilizerController.dispose();
    labourController.dispose();
    machineryController.dispose();
    othersController.dispose();
    super.dispose();
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
          'Farmer Book',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontSize: 22,
          ),
        ),
        leading: BackButton(color: Colors.black87),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildTextField('Seeds', seedsController),
                const SizedBox(height: 10),
                _buildTextField('Fertilizer', fertilizerController),
                const SizedBox(height: 10),
                _buildTextField('Labour', labourController),
                const SizedBox(height: 10),
                _buildTextField('Machineries Charge', machineryController),
                const SizedBox(height: 10),
                _buildTextField('Others', othersController),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Total Expense = ₹$totalExpense',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFA500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: const Size(double.infinity, 60),
                    shadowColor: Colors.black45,
                    elevation: 5,
                  ),
                  onPressed: () {
                    calculateTotal();
                    // Add navigation or save logic here when needed
                  },
                  child: const Text(
                    'Save & Next',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // This page corresponds to Farmer tab
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
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
        onTap: (index) {
          // Handle bottom nav tap navigation here if required
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          ),
          onChanged: (_) => calculateTotal(),
        ),
      ],
    );
  }
}

