// // import 'package:flutter/material.dart';
// // import '../models/cart_item.dart';
// //
// // class CartScreen extends StatefulWidget {
// //   const CartScreen({super.key});
// //
// //   @override
// //   State<CartScreen> createState() => _CartScreenState();
// // }
// //
// // class _CartScreenState extends State<CartScreen> {
// //   // Sample cart items, replace with state management in real use
// //   final List<CartItem> _cartItems = [
// //     CartItem(
// //       id: '1',
// //       productId: 'p1',
// //       name: 'Apples',
// //       price: 40,
// //       quantity: 2,
// //       imageUrl: 'https://placehold.co/60x60?text=Apple',
// //     ),
// //     CartItem(
// //       id: '2',
// //       productId: 'p2',
// //       name: 'Bananas',
// //       price: 30,
// //       quantity: 3,
// //       imageUrl: 'https://placehold.co/60x60?text=Banana',
// //     ),
// //   ];
// //
// //   double get totalPrice =>
// //       _cartItems.fold(0, (sum, item) => sum + item.price * item.quantity);
// //
// //   void _incrementQuantity(int index) {
// //     setState(() {
// //       _cartItems[index].quantity++;
// //     });
// //   }
// //
// //   void _decrementQuantity(int index) {
// //     setState(() {
// //       if (_cartItems[index].quantity > 1) {
// //         _cartItems[index].quantity--;
// //       }
// //     });
// //   }
// //
// //   void _checkout() {
// //     showDialog(
// //       context: context,
// //       builder: (context) => AlertDialog(
// //         title: const Text('Checkout'),
// //         content: Text('Total amount: ₹${totalPrice.toStringAsFixed(2)}'),
// //         actions: [
// //           ElevatedButton(
// //               onPressed: () => Navigator.of(context).pop(),
// //               child: const Text('OK'))
// //         ],
// //       ),
// //     );
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Your Cart'),
// //       ),
// //       body: Column(
// //         children: [
// //           Expanded(
// //             child: ListView.builder(
// //               itemCount: _cartItems.length,
// //               itemBuilder: (context, index) {
// //                 final item = _cartItems[index];
// //                 return ListTile(
// //                   leading: Image.network(item.imageUrl, width: 60, height: 60),
// //                   title: Text(item.name),
// //                   subtitle: Text('Price: ₹${item.price.toStringAsFixed(2)}'),
// //                   trailing: SizedBox(
// //                     width: 120,
// //                     child: Row(
// //                       children: [
// //                         IconButton(
// //                           onPressed: () => _decrementQuantity(index),
// //                           icon: const Icon(Icons.remove_circle_outline),
// //                         ),
// //                         Text(item.quantity.toString()),
// //                         IconButton(
// //                           onPressed: () => _incrementQuantity(index),
// //                           icon: const Icon(Icons.add_circle_outline),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(12),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 Text(
// //                   'Total: ₹${totalPrice.toStringAsFixed(2)}',
// //                   style: const TextStyle(
// //                       fontSize: 20, fontWeight: FontWeight.bold),
// //                 ),
// //                 ElevatedButton(
// //                   onPressed: _checkout,
// //                   child: const Text('Checkout'),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
//
// class GroceryBookPage extends StatelessWidget {
//   const GroceryBookPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.orange[100],
//       appBar: AppBar(
//         backgroundColor: Colors.orange[200],
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         centerTitle: true,
//         title: const Text(
//           "Grocery Book",
//           style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(15),
//             ),
//             padding: const EdgeInsets.all(20),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 _buildTextField("Item", "Rice"),
//                 const SizedBox(height: 15),
//                 _buildTextField("Purchase Price", "1500"),
//                 const SizedBox(height: 15),
//                 _buildTextField("Selling Price", "1900"),
//                 const SizedBox(height: 15),
//                 _buildTextField("Quantity", "15 kg"),
//                 const SizedBox(height: 25),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.orange,
//                     foregroundColor: Colors.white,
//                     minimumSize: const Size(double.infinity, 50),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                   onPressed: () {
//                     // Add logic here
//                   },
//                   child: const Text("Add", style: TextStyle(fontSize: 18)),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Colors.grey,
//         type: BottomNavigationBarType.fixed,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.assignment), label: "Record"),
//           BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Grocery"),
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
//         ],
//       ),
//     );
//   }
//
//   static Widget _buildTextField(String label, String hint) {
//     return TextField(
//       decoration: InputDecoration(
//         labelText: label,
//         hintText: hint,
//         border: const OutlineInputBorder(),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class GroceryBookPage extends StatelessWidget {
  const GroceryBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Colors.orange[200],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          "Grocery Book",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTextField("Item", "Rice"),
                const SizedBox(height: 15),
                _buildTextField("Purchase Price", "1500"),
                const SizedBox(height: 15),
                _buildTextField("Selling Price", "1900"),
                const SizedBox(height: 15),
                _buildTextField("Quantity", "15 kg"),
                const SizedBox(height: 25),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // Add logic here
                  },
                  child: const Text("Add", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: "Record"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Grocery"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
        ],
      ),
    );
  }

  static Widget _buildTextField(String label, String hint) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
