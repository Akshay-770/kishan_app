import 'package:flutter/material.dart';
import '../models/cart_item.dart';
import '../models/product.dart';

class CartProvider with ChangeNotifier {
  final Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => {..._items};

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    double total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  void addItem(Product product, [int quantity = 1]) {
    if (_items.containsKey(product.id)) {
      // update quantity
      _items.update(
        product.id,
            (existingCartItem) {
          return CartItem(
            id: existingCartItem.id,
            productId: existingCartItem.productId,
            name: existingCartItem.name,
            price: existingCartItem.price,
            quantity: existingCartItem.quantity + quantity,
            imageUrl: existingCartItem.imageUrl,
          );
        },
      );
    } else {
      // add new entry
      _items.putIfAbsent(
        product.id,
            () => CartItem(
          id: DateTime.now().toString(),
          productId: product.id,
          name: product.name,
          price: product.price,
          quantity: quantity,
          imageUrl: product.imageUrl,
        ),
      );
    }
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }

  void incrementQuantity(String productId) {
    if (!_items.containsKey(productId)) return;
    _items.update(
      productId,
          (existing) => CartItem(
        id: existing.id,
        productId: existing.productId,
        name: existing.name,
        price: existing.price,
        quantity: existing.quantity + 1,
        imageUrl: existing.imageUrl,
      ),
    );
    notifyListeners();
  }

  void decrementQuantity(String productId) {
    if (!_items.containsKey(productId)) return;
    final currentItem = _items[productId]!;
    if (currentItem.quantity > 1) {
      _items.update(
        productId,
            (existing) => CartItem(
          id: existing.id,
          productId: existing.productId,
          name: existing.name,
          price: existing.price,
          quantity: existing.quantity - 1,
          imageUrl: existing.imageUrl,
        ),
      );
    } else {
      removeItem(productId);
    }
    notifyListeners();
  }
}
