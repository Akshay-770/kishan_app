import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _products = [
    Product(
      id: 'p1',
      name: 'Fresh Tomatoes',
      description: 'Fresh ripe tomatoes from local farms',
      price: 30,
      imageUrl: 'https://placehold.co/150x150?text=Tomato',
    ),
    Product(
      id: 'p2',
      name: 'Green Beans',
      description: 'Organic green beans perfect for cooking',
      price: 40,
      imageUrl: 'https://placehold.co/150x150?text=Beans',
    ),
    Product(
      id: 'p3',
      name: 'Mango',
      description: 'Sweet and juicy mangoes',
      price: 100,
      imageUrl: 'https://placehold.co/150x150?text=Mango',
    ),
    Product(
      id: 'p4',
      name: 'Potatoes',
      description: 'Fresh potatoes with high nutritional value',
      price: 25,
      imageUrl: 'https://placehold.co/150x150?text=Potato',
    ),
  ];

  List<Product> get products => [..._products];

  Product findById(String id) {
    return _products.firstWhere((prod) => prod.id == id);
  }

  // Example future method to simulate fetching products from backend
  Future<void> fetchProducts() async {
    await Future.delayed(const Duration(seconds: 2));
    // Simulate fetching products from backend or API
    // For now, no changes to _products
    notifyListeners();
  }
}
