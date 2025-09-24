import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int quantity = 1;

  void _increment() {
    setState(() {
      quantity++;
    });
  }

  void _decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  void _addToCart() {
    // Add product with quantity to cart (implement provider or state logic)
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
            '${widget.product.name} (x$quantity) added to cart'),
      ),
    );
    // Optionally navigate to cart or dashboard
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              product.name,
              style: const TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              '₹${product.price.toStringAsFixed(2)}',
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.orange),
            ),
            const SizedBox(height: 16),
            Text(
              product.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: _decrement,
                  iconSize: 30,
                ),
                Text(
                  quantity.toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: _increment,
                  iconSize: 30,
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: _addToCart,
                  child: const Text('Add to Cart'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
