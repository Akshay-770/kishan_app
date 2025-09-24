import 'package:flutter/material.dart';

class GroceryBook extends StatefulWidget {
  const GroceryBook({super.key});

  @override
  State<GroceryBook> createState() => _GroceryBookState();
}

class _GroceryBookState extends State<GroceryBook> {
  final TextEditingController itemController = TextEditingController();
  final TextEditingController purchasePriceController = TextEditingController();
  final TextEditingController sellingPriceController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();

  @override
  void dispose() {
    itemController.dispose();
    purchasePriceController.dispose();
    sellingPriceController.dispose();
    quantityController.dispose();
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
          'Grocery Book',
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
                _buildTextField('Item', itemController),
                const SizedBox(height: 10),
                _buildTextField('Purchase Price', purchasePriceController,
                    keyboardType: TextInputType.number),
                const SizedBox(height: 10),
                _buildTextField('Selling Price', sellingPriceController,
                    keyboardType: TextInputType.number),
                const SizedBox(height: 10),
                _buildTextField('Quantity', quantityController),
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
                    // Handle "Add" logic here
                  },
                  child: const Text(
                    'Add',
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
        currentIndex: 1, // This page corresponds to Grocery tab
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
          // Handle bottom nav tap navigation if needed
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller,
      {TextInputType keyboardType = TextInputType.text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          ),
        ),
      ],
    );
  }
}
